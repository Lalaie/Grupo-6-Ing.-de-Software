from django.shortcuts import render

from django.http import HttpResponse

# Create your views here.

def hdisponibles(request):
    return render(request, 'habitaciones_disponibles.html')     

def reserva(request):   
    return render(request, 'reserva.html')

def habitacion(request):
    return render(request, 'habitacion.html')

def perfil(request):    
    return render(request, 'perfil.html')   

def login(request):    
    return render(request, 'login.html')

