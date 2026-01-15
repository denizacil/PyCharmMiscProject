# Quick Package Reference Guide

## TL;DR - Essential Commands

### Code Quality
```bash
# Format code
black src/ tests/

# Check style
flake8 src/ tests/

# Type checking
mypy src/

# Sort imports
isort src/ tests/
```

### Testing
```bash
# Run tests
pytest

# With coverage
pytest --cov=src

# Parallel testing (faster)
pytest -n auto
```

### Interactive Development
```bash
jupyter notebook    # Start Jupyter
jupyter lab        # Start JupyterLab (modern UI)
```

### Documentation
```bash
sphinx-quickstart docs/          # Create docs
sphinx-build -b html docs/ out/  # Build docs
```

---

## What's Installed & Why

### Testing Suite (pytest ecosystem)
- **pytest** - Industry standard test framework
- **pytest-cov** - Measure code coverage
- **pytest-xdist** - Run tests in parallel for speed

**Use case**: `pytest --cov=src -n auto tests/`

### Code Formatting & Linting
- **black** - Opinionated code formatter (no debates about style!)
- **flake8** - Catches common errors
- **pylint** - Advanced static analysis
- **mypy** - Catch type errors before runtime
- **isort** - Auto-sort imports

**Typical workflow**:
```bash
black src/
isort src/
flake8 src/
mypy src/
pytest
```

### Data Science & Analytics
- **pandas** - Data manipulation (great for numeric data)
- **numpy** - Already in requirements.txt
- Works perfectly together

**Example**:
```python
import pandas as pd
import numpy as np

data = pd.DataFrame({'col': np.array([1, 2, 3])})
```

### Interactive Development
- **jupyter** - Run interactive Python notebooks
- **click** - Build command-line tools

**Start**: `jupyter notebook`

### Documentation
- **sphinx** - Industry standard doc generator
- **sphinx-rtd-theme** - Beautiful documentation theme

### Advanced Testing
- **tox** - Test across multiple Python versions
- **pre-commit** - Automated git hooks

---

## IDE Integration

### PyCharm/JetBrains
1. Go to Settings → Python Integrated Tools
2. Default test runner: pytest
3. Go to Settings → Editor → Code Style
4. Python → Use Black formatter
5. Uncheck "Reformat code on save"

### VS Code
Add to `.vscode/settings.json`:
```json
{
  "python.linting.enabled": true,
  "python.linting.flake8Enabled": true,
  "python.formatting.provider": "black",
  "[python]": {
    "editor.formatOnSave": true,
    "editor.defaultFormatter": "ms-python.python"
  }
}
```

---

## Common Issues & Solutions

### "command not found: black"
```bash
# Make sure virtual environment is activated
source .venv/bin/activate          # Linux/Mac
.venv\Scripts\activate             # Windows
```

### Tests not discovering
```bash
# Run from project root
cd C:\Users\deniz\PyCharmMiscProject
pytest
```

### Import errors in mypy
```bash
# Some packages need type stubs
mypy src/ --ignore-missing-imports
```

---

## Next Professional Steps

1. **Add pre-commit hooks** (prevents bad commits):
   ```bash
   pre-commit install
   ```

2. **Generate coverage reports**:
   ```bash
   pytest --cov=src --cov-report=html
   # Opens htmlcov/index.html in browser
   ```

3. **Generate documentation**:
   ```bash
   sphinx-quickstart docs/
   # Edit docs/source/conf.py and *.rst files
   sphinx-build -b html docs/source docs/build
   ```

4. **Create CLI with Click**:
   ```python
   import click
   
   @click.group()
   def cli():
       pass
   
   @cli.command()
   @click.option('--name')
   def hello(name):
       click.echo(f'Hello {name}!')
   
   if __name__ == '__main__':
       cli()
   ```

---

## Uninstall Individual Packages (if needed)

```bash
pip uninstall jupyter    # Remove Jupyter
pip uninstall tox        # Remove tox
pip uninstall pandas     # Remove pandas
```

## Reinstall Everything

```bash
pip install -e ".[dev,docs,scientific]"
```

---

## Environment Info

- **Python Version**: 3.10+
- **Virtual Env**: `.venv/`
- **Location**: `C:\Users\deniz\PyCharmMiscProject`
- **Installed**: January 15, 2026

---

**Ready to develop professionally! 🚀**

