from django.shortcuts import render, redirect
from .models import Message

# Create your views here.
def getContext(title=""):
    nav_links = ['Home', 'About', 'Services', 'Departments', 'Doctors', 'Teams', 'Contacts']
    context = {
        "nav_links": nav_links,
        "title": title,
    }
    return context

def home(request):
    context = getContext("Bedaya - Home")
    return render(request, "home.html", context=context)

def about(request):
    context = getContext("Bedaya - About")
    return render(request, "about.html", context=context)

def services(request):
    context = getContext("Bedaya - Services")
    return render(request, "services.html", context=context)

def departments(request):
    context = getContext("Bedaya - Departments")
    return render(request, "departments.html", context=context)

def doctors(request):
    context = getContext("Bedaya - Doctors")
    return render(request, "doctors.html", context=context)

def contacts(request):
    context = getContext("Bedaya - Contacts")
    return render(request, "contacts.html", context=context)

def send_message(request):
    if request.method == "POST":
        name = request.POST["name"]
        email = request.POST["email"]
        subject = request.POST["subject"]
        content = request.POST["content"]

        message = Message(name=name, email=email, subject=subject, content=content)
        message.save()

    return redirect("contacts_view")