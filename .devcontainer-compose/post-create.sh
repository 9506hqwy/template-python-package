#!/bin/bash
set -euo pipefail

sudo apt-get update
sudo apt-get install postgresql-client -y

python -m pip install --upgrade pip
pip install uv
uv sync --all-groups
