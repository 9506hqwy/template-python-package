#!/bin/bash
set -euo pipefail

sudo apt-get update
sudo apt-get install postgresql-client -y

python -m pip install --upgrade pip

pip install pytest pytest-cov

curl -LsSf https://astral.sh/uv/install.sh | sh
export PATH="$PATH:$HOME/.local/bin"

uv sync --all-groups
