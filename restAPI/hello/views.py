from django.shortcuts import render

# Create your views here.

from rest_framework import viewsets
from restAPI.hello.serializers import UserSerializer
from restAPI.hello.models import UserSet
from rest_framework.decorators import action

class UserViewSet(viewsets.ModelViewSet):
    """
    API endpoint that allows users to be viewed or edited.
    """
    queryset = UserSet.objects.all()
    serializer_class = UserSerializer
    lookup_field = 'name'

    @action(methods=['post'], detail=True)
    def user_names(self, request, pk=None):
        name = self.get_object()
        return Response()
