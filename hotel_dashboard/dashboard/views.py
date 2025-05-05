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

def index(request):   
    return render(request, 'index.html')        

def dashboard(request):   
    return render(request, 'dashboard.html')    

def empleados(request):   
    return render(request, 'empleados.html')

def habitaciones(request):   
    return render(request, 'habitaciones.html')

def editar_habitacion(request):   
    return render(request, 'editar_habitacion.html')

def nueva_habitacion(request):   
    return render(request, 'nueva_habitacion.html')

