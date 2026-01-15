# Contributing to PyCharmMiscProject

Thank you for considering contributing to PyCharmMiscProject! Here's how you can help.

## Getting Started

### 1. Fork and Clone

```bash
git clone https://github.com/yourusername/PyCharmMiscProject.git
cd PyCharmMiscProject
```

### 2. Create a Virtual Environment

```bash
python -m venv .venv
source .venv/bin/activate  # On Windows: .venv\Scripts\activate
```

### 3. Install Development Dependencies

```bash
pip install -e ".[dev]"
```

This installs the package in editable mode with all development tools:
- pytest - Testing framework
- black - Code formatter
- flake8 - Linter
- mypy - Type checker
- isort - Import sorter

## Development Workflow

### Code Style

We use **black** for formatting and **isort** for imports. Before submitting a PR:

```bash
# Format code with black
black src/ tests/

# Sort imports with isort
isort src/ tests/

# Check code style with flake8
flake8 src/ tests/

# Type check with mypy
mypy src/
```

Or run all at once:

```bash
black src/ tests/ && isort src/ tests/ && flake8 src/ tests/ && mypy src/
```

### Testing

Run tests locally before submitting:

```bash
# Run all tests
pytest -v

# Run specific test
pytest tests/test_normalize.py::test_normalize_nonzero_vector -v

# Run with coverage
pytest --cov=src tests/
```

### Writing Tests

Add tests for any new features:

```python
def test_my_feature():
    """Test description."""
    from pycharmmiscproject import my_function
    result = my_function(input)
    assert result == expected_output
```

Place tests in `tests/test_*.py` following the existing pattern.

## Submitting Changes

### 1. Create a Feature Branch

```bash
git checkout -b feature/my-feature
```

### 2. Make Your Changes

- Add tests for new features
- Update docstrings
- Follow the code style guidelines above
- Keep commits atomic and descriptive

### 3. Commit and Push

```bash
git add .
git commit -m "Add my feature"
git push origin feature/my-feature
```

### 4. Submit a Pull Request

- Write a clear description of what you've changed
- Reference any related issues
- Ensure all tests pass
- Ensure CI/CD pipeline is green

## Code Standards

### Type Hints

All functions should have type hints:

```python
def normalize(x: Union[Sequence[float], np.ndarray]) -> np.ndarray:
    """Return the L2-normalized vector for `x`."""
    ...
```

### Docstrings

Use Google-style docstrings:

```python
def my_function(param1: str, param2: int) -> bool:
    """Brief description.

    Longer description if needed.

    Args:
        param1: Description of param1.
        param2: Description of param2.

    Returns:
        Description of return value.

    Raises:
        ValueError: When validation fails.
    """
    ...
```

### Naming Conventions

- **Functions/Variables**: `snake_case`
- **Classes**: `PascalCase`
- **Constants**: `UPPER_SNAKE_CASE`
- **Private members**: `_leading_underscore`

## Issues and Discussions

- **Bug Reports**: Use the [Issues](https://github.com/yourusername/PyCharmMiscProject/issues) tab
- **Feature Requests**: Please open an issue first to discuss before implementing
- **Questions**: Open a Discussion or send a message

## License

By contributing, you agree that your contributions will be licensed under the MIT License.

## Questions?

Feel free to open an issue or contact the maintainers. Thank you for contributing! 🙏

