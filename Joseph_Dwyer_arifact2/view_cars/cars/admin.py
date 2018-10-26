# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.contrib import admin
from .models import Instore
from .models import CentralDatabase
# Register your models here.

class CentralDatabaseAdmin(admin.ModelAdmin):
        list_display = ('order_id', 'car_id', 'customer_id')

class InstoreAdmin(admin.ModelAdmin):
    list_display = ('store_id', 'order_id', 'customer_id')
        
admin.site.register(Instore, InstoreAdmin)
admin.site.register(CentralDatabase, CentralDatabaseAdmin)
