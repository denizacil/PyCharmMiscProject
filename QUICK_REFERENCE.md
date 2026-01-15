# 🚀 Quick Reference Guide

## Installation & Setup

```bash
# Clone and setup
git clone <your-repo>
cd PyCharmMiscProject
python -m venv .venv
source .venv/bin/activate  # Windows: .venv\Scripts\activate

# Install
pip install -e ".[dev]"
```

## Common Commands

### Code Quality
```bash
make format      # Black + isort
make lint        # Flake8
make type-check  # Mypy
make test        # Pytest
make quality     # All checks + tests
make clean       # Remove artifacts
```

### Testing
```bash
pytest -v                    # Verbose
pytest --cov=src tests/      # With coverage
pytest -k normalize          # Specific tests
pytest tests/test_normalize.py::test_normalize_nonzero_vector
```

## Project Structure

```
src/pycharmmiscproject/      # Main package code
tests/                        # Unit tests
scripts/                      # Utility scripts
experiments/                  # Experimental code
.github/workflows/            # CI/CD pipeline
```

## File Locations

| Task | File |
|------|------|
| Add function | `src/pycharmmiscproject/utils.py` |
| Export API | `src/pycharmmiscproject/__init__.py` |
| Write tests | `tests/test_*.py` |
| Project config | `pyproject.toml` |
| Dev shortcuts | `Makefile` |
| Contribution rules | `CONTRIBUTING.md` |
| Usage guide | `README.md` |

## Coding Standards

### Type Hints
```python
from typing import Union, Sequence
import numpy as np

def normalize(x: Union[Sequence[float], np.ndarray]) -> np.ndarray:
    """Docstring here."""
```

### Docstring Format
```python
def my_function(param1: str, param2: int) -> bool:
    """Brief description.
    
    Longer description if needed.
    
    Args:
        param1: Description.
        param2: Description.
    
    Returns:
        Description of return.
    
    Raises:
        ValueError: When validation fails.
    """
```

### Naming Conventions
- Functions/variables: `snake_case`
- Classes: `PascalCase`
- Constants: `UPPER_SNAKE_CASE`
- Private: `_leading_underscore`

## Git Workflow

```bash
# Feature branch
git checkout -b feature/my-feature

# Make changes
# ... edit files ...

# Check quality
make quality

# Commit
git add .
git commit -m "Add my feature"
git push origin feature/my-feature

# Create Pull Request on GitHub
```

## Troubleshooting

### Import Error
```bash
pip install -e .
```

### Tests Fail
```bash
pip install -e ".[dev]"
pytest -vv
```

### Code Format Issues
```bash
make format
```

### Type Errors
```bash
make type-check
```

## Environment Variables

Create `.env` for sensitive data (auto-ignored by .gitignore):
```bash
API_KEY=your_key_here
SECRET=your_secret
```

## Before Submitting PR

```bash
# Run all checks
make quality

# Or manually
black src/ tests/
isort src/ tests/
flake8 src/ tests/
mypy src/
pytest -v
```

## Useful Links

- [Repo Issues](https://github.com/yourusername/PyCharmMiscProject/issues)
- [Contributing Guide](CONTRIBUTING.md)
- [Main README](README.md)
- [License](LICENSE)

## Getting Help

1. Check [README.md](README.md) - General info
2. Check [CONTRIBUTING.md](CONTRIBUTING.md) - Dev guidelines
3. Run `make help` - Show available commands
4. Open an [Issue](https://github.com/yourusername/PyCharmMiscProject/issues)

---

**Last Updated:** January 2026  
**Status:** Production Ready ✅

