from django.shortcuts import render, HttpResponse

# Create your views here.
def test(request):
    return HttpResponse("<H1>ASDASD</H1>")