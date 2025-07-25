#!/bin/bash

echo "--- Vercel Static Build Start ---"

# Install dependencies *within this build context*
echo "Installing Python dependencies for static build..."
pip install -r requirements.txt

# Collect static files
echo "Collecting static files..."
python manage.py collectstatic --noinput --clear

echo "--- Vercel Static Build End ---"