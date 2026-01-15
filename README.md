# PyCharmMiscProject

A Python project featuring utilities for vector normalization and other mathematical operations.

## Features

- **Safe normalization** with L2 norm handling
- **Zero-vector safe**: returns unchanged zero vector instead of raising division-by-zero error
- **Flexible input**: accepts lists, tuples, or numpy arrays
- **Type hints**: fully type-annotated for better IDE support
- **Comprehensive testing**: pytest with full test coverage
- **Code quality**: black, flake8, mypy, isort configured
- **CI/CD ready**: GitHub Actions pipeline included

## Quick Start

### Installation

```bash
# Clone the repository
git clone https://github.com/denizacil/PyCharmMiscProject.git
cd PyCharmMiscProject

# Create and activate virtual environment
python -m venv .venv
source .venv/bin/activate  # On Windows: .venv\Scripts\activate

# Install package with development dependencies
pip install -e ".[dev,docs,scientific]"
```

### Basic Usage

```python
from pycharmmiscproject import normalize
import numpy as np

# Normalize a vector
vector = np.array([3.0, 4.0])
normalized = normalize(vector)
print(normalized)  # [0.6 0.8]

# Normalize zero vector (safe)
zero_vector = np.array([0.0, 0.0])
result = normalize(zero_vector)
print(result)  # [0. 0.]

# Normalize from list
result = normalize([1, 0, 0])
print(result)  # [1. 0. 0.]
```

## Running Tests

```bash
# Run all tests
pytest -v

# Run specific test
pytest tests/test_normalize.py::test_normalize_nonzero_vector -v

# Run with coverage report
pytest --cov=src tests/
```

## Code Quality

### Formatting and Linting

```bash
# Format code (black + isort)
black src/ tests/
isort src/ tests/

# Check code style
flake8 src/ tests/

# Type checking
mypy src/
```

### Using Makefile

```bash
make format      # Format with black and isort
make lint        # Run flake8
make type-check  # Run mypy
make test        # Run pytest
make quality     # Run all checks and tests
make clean       # Remove build artifacts
```

## Project Structure

```
project/
├── .github/
│   └── workflows/
│       └── tests.yml              # CI/CD pipeline
├── src/
│   └── pycharmmiscproject/
│       ├── __init__.py            # Package exports
│       ├── utils.py               # Vector utilities
│       └── model.py               # (future) Model utilities
├── scripts/
│   └── run_tests.py               # Standalone test runner
├── tests/
│   ├── conftest.py                # pytest configuration
│   └── test_normalize.py           # Unit tests
├── experiments/                   # Experimental code
├── pyproject.toml                 # Project metadata & configs
├── Makefile                        # Development shortcuts
├── CONTRIBUTING.md                # Contribution guidelines
├── LICENSE                         # MIT License
├── README.md                       # This file
└── requirements.txt               # Dependencies
```

## Contributing

We welcome contributions! Please see [CONTRIBUTING.md](CONTRIBUTING.md) for guidelines on:
- Setting up your development environment
- Code style requirements
- Testing expectations
- Submitting pull requests

## CI/CD Pipeline

Tests and quality checks run automatically on:
- **Every push** to `main`, `master`, or `develop` branches
- **Pull requests** to those branches
- **Python versions**: 3.10, 3.11, 3.12

The pipeline includes:
- ✅ Unit tests (pytest)
- ✅ Code formatting (black)
- ✅ Import sorting (isort)
- ✅ Linting (flake8)
- ✅ Type checking (mypy)
- ✅ Coverage reporting

## Dependencies

### Runtime
- numpy >=2.4.1

### Development
- pytest >=9.0.0
- black >=23.0.0
- flake8 >=6.0.0
- mypy >=1.0.0
- isort >=5.12.0

Install with: `pip install -e ".[dev]"`

## API Reference

### `normalize(x: Union[Sequence[float], np.ndarray]) -> np.ndarray`

Return the L2-normalized vector for `x`.

**Parameters:**
- `x`: 1-D array-like numeric vector (list, tuple, or numpy array)

**Returns:**
- `np.ndarray`: Normalized vector with L2 norm 1, or the original vector if its norm is zero

**Examples:**
```python
import numpy as np
from pycharmmiscproject import normalize

# Basic normalization
v = np.array([3.0, 4.0])
normalized = normalize(v)  # [0.6, 0.8]

# Zero vector
zero_v = np.array([0.0, 0.0])
normalize(zero_v)  # [0.0, 0.0]

# From list
normalize([1, 0, 0])  # [1.0, 0.0, 0.0]
```

## Troubleshooting

### Import errors
```bash
# Make sure you installed in editable mode
pip install -e .
```

### Test failures
```bash
# Reinstall development dependencies
pip install -e ".[dev]"

# Run with verbose output
pytest -vv
```

## License

This project is licensed under the MIT License - see [LICENSE](LICENSE) file for details.

## Author

Deniz - [GitHub](https://github.com/denizacil)

## Support

- 📖 [Documentation](https://github.com/denizacil/PyCharmMiscProject#readme)
- 🐛 [Report Issues](https://github.com/denizacil/PyCharmMiscProject/issues)
- 💡 [Request Features](https://github.com/denizacil/PyCharmMiscProject/issues/new)

