from django.shortcuts import render
from .models import Service


def home(request):
    return render(request, 'index.html')

def about(request):
    return render(request, 'about.html')

def contact(request):
    return render(request, 'contact.html')

def startbusiness(request):
    categories = ['business', 'ngo', 'compliance', 'trademark']
    services_by_type = {cat: Service.objects.filter(service_type=cat) for cat in categories}
    return render(request, 'start.html', {'services_by_type': services_by_type})

# def startbusiness(request):
#     return render(request, 'start.html')


