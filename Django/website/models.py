from django.db import models

# Create your models here.
class Home(models.Model):
    title = models.CharField(max_length=100, null=False)
    slogan = models.CharField(max_length=300, null=False)
    address = models.CharField(max_length=100, null=False)
    #logo = models.ImageField(upload_to='', null=False)
    #poster_path = models.ImageField(upload_to='', null=False)

class SocialMedia(models.Model):
    name = models.CharField(max_length=100, null=False)
    link = models.CharField(max_length=100, null=False)

class Message(models.Model):
    name = models.CharField(max_length=100, null=False)
    email = models.CharField(max_length=100, null=False)
    date = models.DateTimeField(null=False)
    subject = models.CharField(max_length=100, null=False)
    content = models.TextField(max_length=400, null=False)

    def __str__(self):
        return f"({self.subject}) {self.date}."

class Subscriber(models.Model):
    email = models.CharField(max_length=100, null=False)

    def __str__(self):
        return self.email