"""Small utilities module.

This file provides a safe `normalize` function for numeric vectors.
"""

import numpy as np
from typing import Sequence, Union

def normalize(x: Union[Sequence[float], np.ndarray]) -> np.ndarray:
    """Return the L2-normalized vector for `x`.

    - Accepts array-like input (lists or numpy arrays).
    - Returns a numpy array of dtype float.
    - If the input has zero L2 norm, returns the input converted to float (unchanged) to avoid division by zero.

    Args:
        x: 1-D array-like numeric vector.

    Returns:
        np.ndarray: normalized vector with L2 norm 1, or the original vector if its norm is zero.
    """
    # Convert to numpy array with float dtype
    arr = np.asarray(x, dtype=float)

    # Compute L2 norm
    norm = np.linalg.norm(arr)

    if norm == 0.0:
        # For a zero vector, returning the array itself (as float) avoids division-by-zero.
        return arr

    return arr / norm

