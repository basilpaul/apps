from django.shortcuts import render

# Create your views here.

from rest_framework import viewsets
from restAPI.hello.serializers import UserSerializer
from restAPI.hello.models import UserSet

class UserViewSet(viewsets.ModelViewSet):
    """
    API endpoint that allows users to be viewed or edited.
    """
    queryset = UserSet.objects.all()
    serializer_class = UserSerializer
