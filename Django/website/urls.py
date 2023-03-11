from django.urls import include, path
from .views import home, about, services, departments, doctors, contacts, send_message

urlpatterns = [
    path('', home, name='home_view'),
    path('home/', home, name='home_view'),
    path('about/', about, name='about_view'),
    path('services/', services, name='services_view'),
    path('departments/', departments, name='departments_view'),
    path('doctors/', doctors, name='doctors_view'),
    path('contacts/', contacts, name='contacts_view'),
    path('contacts/send_message/', send_message)
]