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
python3 -m pip install -r requirements-dev.txt
```

## Testing

Install require libraries.

```sh
python3 -m pip install -r requirements-test.txt
```

Execute test code.

```sh
tox
```

## Documentation

Install require libraries.

```sh
python3 -m pip install -r requirements-doc.txt
```

Generate API document.

```sh
sphinx-apidoc -F -f -a -H PROJECT -A AUTHOR -V VERSION -o doc src
cd doc
make html
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
