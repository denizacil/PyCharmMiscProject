import sys
import os
sys.path.insert(0, os.path.join(os.path.dirname(os.path.dirname(os.path.abspath(__file__))), 'src'))

import numpy as np
from pycharmmiscproject import normalize


def assert_allclose(a, b, atol=1e-8):
    if not np.allclose(a, b, atol=atol):
        raise AssertionError(f"Arrays not equal: {a} vs {b}")


def test_normalize_nonzero_vector():
    x = np.array([3.0, 4.0])
    y = normalize(x)
    assert abs(np.linalg.norm(y) - 1.0) < 1e-8
    assert_allclose(y, np.array([0.6, 0.8]))


def test_normalize_zero_vector():
    x = np.array([0.0, 0.0])
    y = normalize(x)
    assert isinstance(y, np.ndarray)
    assert_allclose(y, x)


def test_normalize_list_input():
    x = [1, 0, 0]
    y = normalize(x)
    assert_allclose(y, np.array([1.0, 0.0, 0.0]))


if __name__ == '__main__':
    tests = [
        test_normalize_nonzero_vector,
        test_normalize_zero_vector,
        test_normalize_list_input,
    ]
    failures = 0
    for t in tests:
        print(f"Running: {t.__name__}")
        try:
            t()
            print(f"PASS: {t.__name__}")
        except AssertionError as e:
            failures += 1
            print(f"FAIL: {t.__name__}: {e}")
        except Exception as e:
            failures += 1
            print(f"ERROR: {t.__name__}: {type(e).__name__}: {e}")
    if failures:
        print(f"\n{failures} test(s) failed")
        sys.exit(1)
    print("\nAll tests passed")
    sys.exit(0)

