from django.db import models

# Create your models here.

class UserSet(models.Model):
    name = models.CharField(max_length=255)
    dateOfBirth = models.DateField()


