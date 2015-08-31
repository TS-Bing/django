from django.db import connection, models

class User(models.Model):
    name = models.CharField(max_length=20)
    pwd = models.CharField(max_length=45)
    mail = models.EmailField()
    card = models.CharField(max_length=19)
    phone = models.CharField(max_length=13)
    ip = models.IPAddressField()
    nickname = models.CharField(max_length=20)
    qq = models.CharField(max_length=11)
    address = models.TextField()
    site = models.CharField(max_length=32)


    #def __str__(self):#__unicode__
    #    return self.name

class User2(models.Model):
    aa = models.ForeignKey(User)
    name = models.CharField(max_length=20)
    pwd = models.CharField(max_length=45)
    mail = models.EmailField()
    card = models.CharField(max_length=19)
    phone = models.CharField(max_length=13)
    ip = models.IPAddressField()
    nickname = models.CharField(max_length=20)
    qq = models.CharField(max_length=11)
    address = models.TextField()
    site = models.CharField(max_length=32)
