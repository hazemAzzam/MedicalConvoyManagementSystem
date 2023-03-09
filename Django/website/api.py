from rest_framework import viewsets
from rest_framework import permissions
from .serializers import SocialMediaSerializer
from .models import SocialMedia

class SocialMediaApi(viewsets.ModelViewSet):
    queryset = SocialMedia.objects.all()
    serializer_class = SocialMediaSerializer
    permission_classes = []