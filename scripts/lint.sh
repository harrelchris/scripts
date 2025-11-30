#!/usr/bin/env bash

# Run linting tools

# Exit immediately if any command fails
set -e

# Activate the existing Python virtual environment
source .venv/bin/activate

ruff format

ruff check --fix
