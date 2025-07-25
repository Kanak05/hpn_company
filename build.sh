
# Ensure the Python environment is sourced or explicitly used
# This typically isn't needed if using $PYTHONBIN, but can be a fallback for complex setups

echo "Installing dependencies..."
# Use $PYTHONBIN to explicitly call pip
$PYTHONBIN -m pip install -r requirements.txt

echo "Making migrations..."
# Use $PYTHONBIN to explicitly call python
$PYTHONBIN manage.py makemigrations --noinput
echo "Applying migrations..."
$PYTHONBIN manage.py migrate --noinput

echo "Collecting static files..."
$PYTHONBIN manage.py collectstatic --noinput --clear

echo "Build process completed!"