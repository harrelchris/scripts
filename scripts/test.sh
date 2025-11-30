#!/usr/bin/env bash

# Run tests

# Exit immediately if any command fails
set -e

# Activate the existing Python virtual environment
source .venv/bin/activate

pytest
