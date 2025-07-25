"""
WSGI config for ca_website project.

It exposes the WSGI callable as a module-level variable named ``application``.

For more information on this file, see
https://docs.djangoproject.com/en/5.2/howto/deployment/wsgi/
"""

# import os

# from django.core.wsgi import get_wsgi_application

# os.environ.setdefault('DJANGO_SETTINGS_MODULE', 'ca_website.settings')

# application = get_wsgi_application()

# app = application
import os
from django.core.wsgi import get_wsgi_application
from whitenoise import WhiteNoise # Import WhiteNoise

os.environ.setdefault('DJANGO_SETTINGS_MODULE', 'ca_website.settings') # Ensure this matches your project name

application = get_wsgi_application()

# Configure WhiteNoise to serve static files
# The path here should point to the STATIC_ROOT directory, which is 'staticfiles'
application = WhiteNoise(application, root=os.path.join(os.path.dirname(os.path.abspath(__file__)), '..', 'staticfiles'))

# Vercel expects the application to be named 'app'
app = application