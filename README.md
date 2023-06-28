# Template for Python Package

This repository provides a template for python package.

## Prepare

1. Replace the keyword in the `pyproject.toml`.
   - `PACKAGE_NAME`: package's name
   - `PACKAGE_DESCRIPTION`: package's description
   - `USERNAME`: package's author
2. Update other content in the `pyproject.toml`.
3. Implement `src` and `test` directories.

## Development

Install require libraries.

```sh
python3 -m pip install bandit black flake8 isort mypy
```

## Testing

Install require libraries.

```sh
python3 -m pip install pytest pytest-cov tox
```

Execute test code.

```sh
tox
```

## Building package

Install require libraries.

```sh
python3 -m pip install build
```

Build `sdist` and `bdist`.

```sh
python3 -m build
```
