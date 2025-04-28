from django.urls import path
from . import views

app_name = 'dashboard'

urlpatterns = [
    
    path('', views.hdisponibles, name='hdisponibles'),
    path('habitaciones_disponibles/', views.hdisponibles, name='hdisponibles'), 
    path('habitacion/reserva/', views.reserva, name='reserva'),
    path('habitacion/', views.habitacion, name='habitacion'), 
    path('perfil/', views.perfil, name='perfil'),   
]