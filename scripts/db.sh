#!/usr/bin/env bash

# Reset or initialize database

# Activate Python virtual environment
source .venv/bin/activate

# Turn on auto-export (set -o allexport)
set -a

# Load variables from .env (they'll all be exported)
source .env

# Turn off auto-export (set +o allexport)
set +a

# Reset database
dropdb --if-exists $POSTGRES_DB
dropuser $POSTGRES_USER

createuser $POSTGRES_USER
createdb $POSTGRES_DB --owner=$POSTGRES_USER

# Django database initialization
python manage.py makemigrations
python manage.py migrate
python manage.py createsuperuser --noinput --username user --email user@email.com
