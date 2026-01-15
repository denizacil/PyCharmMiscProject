.PHONY: help install install-dev format lint type-check test clean

help:
	@echo "PyCharmMiscProject - Development Commands"
	@echo ""
	@echo "Available targets:"
	@echo "  install          Install the package"
	@echo "  install-dev      Install with development dependencies"
	@echo "  format           Format code with black and isort"
	@echo "  lint             Check code style with flake8"
	@echo "  type-check       Run mypy type checker"
	@echo "  test             Run pytest tests"
	@echo "  quality          Run all code quality checks"
	@echo "  clean            Remove build artifacts and cache"
	@echo "  help             Show this help message"

install:
	pip install -e .

install-dev:
	pip install -e ".[dev]"

format:
	black src/ tests/
	isort src/ tests/

lint:
	flake8 src/ tests/

type-check:
	mypy src/

test:
	pytest -v

quality: format lint type-check test
	@echo "All quality checks passed!"

clean:
	rm -rf build/ dist/ *.egg-info
	find . -type d -name __pycache__ -exec rm -rf {} +
	find . -type f -name "*.pyc" -delete
	rm -rf .pytest_cache .mypy_cache .coverage htmlcov/

