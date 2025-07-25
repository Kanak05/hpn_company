#!/bin/bash

echo "--- Vercel Static Build Start ---"

# Install dependencies
echo "Installing Python dependencies for static build..."
/usr/local/bin/python -m pip install -r requirements.txt # Explicitly use python path

# Collect static files
echo "Collecting static files..."
/usr/local/bin/python manage.py collectstatic --noinput --clear # Explicitly use python path

echo "--- Vercel Static Build End ---"