#!/usr/bin/env bash

# Initialize local development environment

# Exit immediately if any command fails
set -e

# Create Python virtual environment if none found
if [ ! -d ".venv" ]; then
    python3 -m venv .venv
fi

# Activate the existing Python virtual environment
source .venv/bin/activate

# Update pip and install dependencies
python -m pip install --upgrade pip

pip install pytest ruff

pip install -r requirements.txt

# Create a .env file if none found
if [ ! -f ".env" ]; then
  cp envs/local.env .env
fi
