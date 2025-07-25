#!/bin/bash

echo "--- Vercel Static Build Start ---"

# Install dependencies
echo "Installing Python dependencies for static build..."
$PYTHONBIN -m pip install -r requirements.txt # Use $PYTHONBIN for pip

# Collect static files
echo "Collecting static files..."
$PYTHONBIN manage.py collectstatic --noinput --clear # Use $PYTHONBIN for python manage.py

echo "--- Vercel Static Build End ---"