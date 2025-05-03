from django.urls import path
from . import views

app_name = 'dashboard'

urlpatterns = [
    
    path('hdisponibles', views.hdisponibles, name='hdisponibles'),
    path('habitaciones_disponibles/', views.hdisponibles, name='hdisponibles'), 
    path('reserva/', views.reserva, name='reserva'),
    path('habitacion/', views.habitacion, name='habitacion'), 
    path('perfil/', views.perfil, name='perfil'),   
    path('', views.login, name='login'),    
    path('index/', views.index, name='index'),  
    path('dashboard/', views.dashboard, name='dashboard'),
    path('empleados/', views.empleados, name='empleados'),  
    path('habitaciones/', views.habitaciones, name='habitaciones'),
    path('edit/habitacion/', views.editar_habitacion, name='editar_habitacion'),
]