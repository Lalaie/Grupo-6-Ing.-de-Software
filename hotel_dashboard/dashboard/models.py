from django.db import models
from django.contrib.auth.models import User

# Create your models here.
class Usuario(models.Model):
    nombre = models.CharField(max_length=100)
    apellido = models.CharField(max_length=100)
    correo = models.CharField(max_length=150)
    telefono = models.CharField(null=True, blank=True)
    
    def __str__(self) -> str:
        return self.nombre