#!/usr/bin/env bash

# Run main program

# Exit immediately if any command fails
set -e

# Activate the existing Python virtual environment
source .venv/bin/activate

python3 main.py
