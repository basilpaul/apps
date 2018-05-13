from rest_framework import serializers
from restAPI.hello.models import UserSet

class UserSerializer(serializers.ModelSerializer):
    class Meta:
        model = UserSet
        fields = ('__all__')
