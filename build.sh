#!/bin/bash

echo "--- Vercel Static Build Start ---"

# Install dependencies
echo "Installing Python dependencies for static build..."
# Try 'python3' or just 'python' directly as Vercel should add it to PATH for Python projects
python3 -m pip install -r requirements.txt 

# Collect static files
echo "Collecting static files..."
# Try 'python3' or just 'python' directly
python3 manage.py collectstatic --noinput --clear 

echo "--- Vercel Static Build End ---"