from django.shortcuts import render
#from django.http import HttpResponse


def home(request):
    return render(request, 'commandes/liste_commandes.html')


