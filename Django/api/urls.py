from django.urls import include, path
from rest_framework import routers
from website import api as website

router = routers.DefaultRouter()
router.register('social_media', website.SocialMediaApi)

urlpatterns = [
    path('', include(router.urls)),
    #path('api-auth/', include('rest_framework.urls', namespace='rest_framework'))
]