from django.db import models

class Service(models.Model):
    SERVICE_TYPE_CHOICES = [
        ('business', 'Start Business'),
        ('ngo', 'NGO'),
        ('compliance', 'Compliance'),
        ('trademark', 'Trademark'),
    ]

    header = models.CharField(max_length=200, default='General')
    title = models.CharField(max_length=200)
    description = models.TextField()
    icon = models.CharField(max_length=100, blank=True)
    service_type = models.CharField(max_length=20, choices=SERVICE_TYPE_CHOICES, default='business')

    def __str__(self):
        return f"{self.title} ({self.get_service_type_display()})"
