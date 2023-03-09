from .models import *
from rest_framework import serializers

class SocialMediaSerializer(serializers.HyperlinkedModelSerializer):
    class Meta:
        model = SocialMedia
        fields = ['name', 'link']