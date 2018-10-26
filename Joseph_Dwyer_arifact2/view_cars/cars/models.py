# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models

# Create your models here.


class AuthGroup(models.Model):
    name = models.CharField(unique=True, max_length=80)

    class Meta:
        managed = False
        db_table = 'auth_group'


class AuthGroupPermissions(models.Model):
    group = models.ForeignKey(AuthGroup, models.DO_NOTHING)
    permission = models.ForeignKey('AuthPermission', models.DO_NOTHING)

    class Meta:
        managed = False
        db_table = 'auth_group_permissions'
        unique_together = (('group', 'permission'),)


class AuthPermission(models.Model):
    name = models.CharField(max_length=255)
    content_type = models.ForeignKey('DjangoContentType', models.DO_NOTHING)
    codename = models.CharField(max_length=100)

    class Meta:
        managed = False
        db_table = 'auth_permission'
        unique_together = (('content_type', 'codename'),)


class AuthUser(models.Model):
    password = models.CharField(max_length=128)
    last_login = models.DateTimeField(blank=True, null=True)
    is_superuser = models.IntegerField()
    username = models.CharField(unique=True, max_length=150)
    first_name = models.CharField(max_length=30)
    last_name = models.CharField(max_length=30)
    email = models.CharField(max_length=254)
    is_staff = models.IntegerField()
    is_active = models.IntegerField()
    date_joined = models.DateTimeField()

    class Meta:
        managed = False
        db_table = 'auth_user'


class AuthUserGroups(models.Model):
    user = models.ForeignKey(AuthUser, models.DO_NOTHING)
    group = models.ForeignKey(AuthGroup, models.DO_NOTHING)

    class Meta:
        managed = False
        db_table = 'auth_user_groups'
        unique_together = (('user', 'group'),)


class AuthUserUserPermissions(models.Model):
    user = models.ForeignKey(AuthUser, models.DO_NOTHING)
    permission = models.ForeignKey(AuthPermission, models.DO_NOTHING)

    class Meta:
        managed = False
        db_table = 'auth_user_user_permissions'
        unique_together = (('user', 'permission'),)


class CentralDatabase(models.Model):
    order_id = models.IntegerField(db_column='order_ID',primary_key=True)  # Field name made lowercase.
    order_createdate = models.DateField(db_column='Order_CreateDate', blank=True, null=True)  # Field name made lowercase.
    order_pickupdate = models.DateField(db_column='Order_PickupDate', blank=True, null=True)  # Field name made lowercase.
    order_pickupstore = models.IntegerField(db_column='Order_PickupStore', blank=True, null=True)  # Field name made lowercase.
    pickup_store_name = models.CharField(db_column='Pickup_Store_Name', max_length=21, blank=True, null=True)  # Field name made lowercase.
    pickup_store_address = models.CharField(db_column='Pickup_Store_Address', max_length=25, blank=True, null=True)  # Field name made lowercase.
    pickup_store_phone = models.CharField(db_column='Pickup_Store_Phone', max_length=19, blank=True, null=True)  # Field name made lowercase.
    pickup_store_city = models.CharField(db_column='Pickup_Store_City', max_length=30, blank=True, null=True)  # Field name made lowercase.
    pickup_store_state_name = models.CharField(db_column='Pickup_Store_State_Name', max_length=15, blank=True, null=True)  # Field name made lowercase.
    order_returndate = models.IntegerField(db_column='Order_ReturnDate', blank=True, null=True)  # Field name made lowercase.
    order_returnstore = models.IntegerField(db_column='Order_ReturnStore', blank=True, null=True)  # Field name made lowercase.
    return_store_name = models.CharField(db_column='Return_Store_Name', max_length=21, blank=True, null=True)  # Field name made lowercase.
    return_store_address = models.CharField(db_column='Return_Store_Address', max_length=25, blank=True, null=True)  # Field name made lowercase.
    return_store_phone = models.CharField(db_column='Return_Store_Phone', max_length=19, blank=True, null=True)  # Field name made lowercase.
    return_store_city = models.CharField(db_column='Return_Store_City', max_length=30, blank=True, null=True)  # Field name made lowercase.
    return_store_state = models.CharField(db_column='Return_Store_State', max_length=15, blank=True, null=True)  # Field name made lowercase.
    customer_id = models.IntegerField(db_column='Customer_ID', blank=True, null=True)  # Field name made lowercase.
    customer_name = models.CharField(db_column='Customer_Name', max_length=12, blank=True, null=True)  # Field name made lowercase.
    customer_phone = models.CharField(db_column='Customer_Phone', max_length=19, blank=True, null=True)  # Field name made lowercase.
    customer_addresss = models.CharField(db_column='Customer_Addresss', max_length=30, blank=True, null=True)  # Field name made lowercase.
    customer_brithday = models.CharField(db_column='Customer_Brithday', max_length=10, blank=True, null=True)  # Field name made lowercase.
    customer_occupation = models.CharField(db_column='Customer_Occupation', max_length=10, blank=True, null=True)  # Field name made lowercase.
    customer_gender = models.CharField(db_column='Customer_Gender', max_length=3, blank=True, null=True)  # Field name made lowercase.
    car_id = models.IntegerField(db_column='Car_ID')  # Field name made lowercase.
    car_makename = models.CharField(db_column='Car_MakeName', max_length=13, blank=True, null=True)  # Field name made lowercase.
    car_model = models.CharField(db_column='Car_Model', max_length=15, blank=True, null=True)  # Field name made lowercase.
    car_series = models.CharField(db_column='Car_Series', max_length=35, blank=True, null=True)  # Field name made lowercase.
    car_seriesyear = models.CharField(db_column='Car_SeriesYear', max_length=4, blank=True, null=True)  # Field name made lowercase.
    car_pricenew = models.CharField(db_column='Car_PriceNew', max_length=6, blank=True, null=True)  # Field name made lowercase.
    car_enginesize = models.CharField(db_column='Car_EngineSize', max_length=4, blank=True, null=True)  # Field name made lowercase.
    car_fuelsystem = models.CharField(db_column='Car_FuelSystem', max_length=18, blank=True, null=True)  # Field name made lowercase.
    car_tankcapacity = models.CharField(db_column='Car_TankCapacity', max_length=5, blank=True, null=True)  # Field name made lowercase.
    car_power = models.CharField(db_column='Car_Power', max_length=5, blank=True, null=True)  # Field name made lowercase.
    car_seatingcapacity = models.CharField(db_column='Car_SeatingCapacity', max_length=2, blank=True, null=True)  # Field name made lowercase.
    car_standardtransmission = models.CharField(db_column='Car_StandardTransmission', max_length=5, blank=True, null=True)  # Field name made lowercase.
    car_bodytype = models.CharField(db_column='Car_BodyType', max_length=14, blank=True, null=True)  # Field name made lowercase.
    car_drive = models.CharField(db_column='Car_Drive', max_length=3, blank=True, null=True)  # Field name made lowercase.
    car_wheelbase = models.CharField(db_column='Car_Wheelbase', max_length=6, blank=True, null=True)  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'central database'


class DjangoAdminLog(models.Model):
    action_time = models.DateTimeField()
    object_id = models.TextField(blank=True, null=True)
    object_repr = models.CharField(max_length=200)
    action_flag = models.SmallIntegerField()
    change_message = models.TextField()
    content_type = models.ForeignKey('DjangoContentType', models.DO_NOTHING, blank=True, null=True)
    user = models.ForeignKey(AuthUser, models.DO_NOTHING)

    class Meta:
        managed = False
        db_table = 'django_admin_log'


class DjangoContentType(models.Model):
    app_label = models.CharField(max_length=100)
    model = models.CharField(max_length=100)

    class Meta:
        managed = False
        db_table = 'django_content_type'
        unique_together = (('app_label', 'model'),)


class DjangoMigrations(models.Model):
    app = models.CharField(max_length=255)
    name = models.CharField(max_length=255)
    applied = models.DateTimeField()

    class Meta:
        managed = False
        db_table = 'django_migrations'


class DjangoSession(models.Model):
    session_key = models.CharField(primary_key=True, max_length=40)
    session_data = models.TextField()
    expire_date = models.DateTimeField()

    class Meta:
        managed = False
        db_table = 'django_session'


class Instore(models.Model):
    store_id = models.IntegerField(db_column='store_ID')  # Field name made lowercase.
    store_name = models.CharField(db_column='Store_Name', max_length=50, blank=True, null=True)  # Field name made lowercase.
    store_address = models.CharField(db_column='Store_Address', max_length=50, blank=True, null=True)  # Field name made lowercase.
    store_phone = models.CharField(db_column='Store_Phone', max_length=19, blank=True, null=True)  # Field name made lowercase.
    store_city = models.CharField(db_column='Store_City', max_length=50, blank=True, null=True)  # Field name made lowercase.
    store_state_name = models.CharField(db_column='Store_State_Name', max_length=50, blank=True, null=True)  # Field name made lowercase.
    order_id = models.IntegerField(db_column='Order_ID', blank=True, null=True)  # Field name made lowercase.
    order_createdate = models.DateField(db_column='Order_CreateDate', blank=True, null=True)  # Field name made lowercase.
    pickup_or_return = models.CharField(db_column='Pickup_Or_Return', max_length=50, blank=True, null=True)  # Field name made lowercase.
    pickup_or_return_date = models.DateField(db_column='Pickup_Or_Return_Date', blank=True, null=True)  # Field name made lowercase.
    customer_id = models.IntegerField(db_column='Customer_ID',primary_key=True)  # Field name made lowercase.
    customer_name = models.CharField(db_column='Customer_Name', max_length=50, blank=True, null=True)  # Field name made lowercase.
    customer_phone = models.CharField(db_column='Customer_Phone', max_length=50, blank=True, null=True)  # Field name made lowercase.
    customer_addresss = models.CharField(db_column='Customer_Addresss', max_length=50, blank=True, null=True)  # Field name made lowercase.
    customer_birthday = models.CharField(db_column='Customer_Birthday', max_length=8, blank=True, null=True)  # Field name made lowercase.
    customer_occupation = models.CharField(db_column='Customer_Occupation', max_length=50, blank=True, null=True)  # Field name made lowercase.
    customer_gender = models.CharField(db_column='Customer_Gender', max_length=50, blank=True, null=True)  # Field name made lowercase.
    car_id = models.IntegerField(db_column='Car_ID', blank=True, null=True)  # Field name made lowercase.
    car_makename = models.CharField(db_column='Car_MakeName', max_length=50, blank=True, null=True)  # Field name made lowercase.
    car_model = models.CharField(db_column='Car_Model', max_length=50, blank=True, null=True)  # Field name made lowercase.
    car_series = models.CharField(db_column='Car_Series', max_length=50, blank=True, null=True)  # Field name made lowercase.
    car_seriesyear = models.CharField(db_column='Car_SeriesYear', max_length=4, blank=True, null=True)  # Field name made lowercase.
    car_pricenew = models.CharField(db_column='Car_PriceNew', max_length=6, blank=True, null=True)  # Field name made lowercase.
    car_enginesize = models.CharField(db_column='Car_EngineSize', max_length=4, blank=True, null=True)  # Field name made lowercase.
    car_fuelsystem = models.CharField(db_column='Car_FuelSystem', max_length=50, blank=True, null=True)  # Field name made lowercase.
    car_tankcapacity = models.CharField(db_column='Car_TankCapacity', max_length=5, blank=True, null=True)  # Field name made lowercase.
    car_power = models.CharField(db_column='Car_Power', max_length=50, blank=True, null=True)  # Field name made lowercase.
    car_seatingcapacity = models.CharField(db_column='Car_SeatingCapacity', max_length=2, blank=True, null=True)  # Field name made lowercase.
    car_standardtransmission = models.CharField(db_column='Car_StandardTransmission', max_length=50, blank=True, null=True)  # Field name made lowercase.
    car_bodytype = models.CharField(db_column='Car_BodyType', max_length=50, blank=True, null=True)  # Field name made lowercase.
    car_drive = models.CharField(db_column='Car_Drive', max_length=3, blank=True, null=True)  # Field name made lowercase.
    car_wheelbase = models.CharField(db_column='Car_Wheelbase', max_length=6, blank=True, null=True)  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'instore'
