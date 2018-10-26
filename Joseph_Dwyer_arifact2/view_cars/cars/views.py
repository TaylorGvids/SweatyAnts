# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.shortcuts import render
from .models import Instore
from .models import CentralDatabase

# Create your views here.

def car_list(request):
    cars = Instore.objects.all()
    return render(request, 'cars/cars_list.html', {'cars': cars})


