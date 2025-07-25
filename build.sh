
echo "--- Vercel Custom Build Start ---"

# Step 1: Install dependencies
echo "Installing Python dependencies from requirements.txt..."
pip install -r requirements.txt

# Step 2: Run Django migrations
echo "Running Django migrations..."
python manage.py makemigrations --noinput
python manage.py migrate --noinput

# Step 3: Collect static files
echo "Collecting static files..."
python manage.py collectstatic --noinput 

echo "--- Vercel Custom Build End ---"