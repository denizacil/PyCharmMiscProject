
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

