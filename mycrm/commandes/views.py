# from django.shortcuts import render
from django.http import HttpResponse


def home(request):
    return HttpResponse('Bonjour les amis nous traitons votre commande')
# Create your views here.
