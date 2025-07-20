from rest_framework import serializers
from .models import Project, Technology

class TechnologySerializer(serializers.ModelSerializer):
    class Meta:
        model = Technology
        fields = ['id', 'name', 'icon', 'type']

class ProjectSerializer(serializers.ModelSerializer):
    technologies = TechnologySerializer(many=True, read_only=True)

    class Meta:
        model = Project
        fields = [
            'id', 'title', 'client', 'thumbnail', 'platform',
            'project_description', 'project_reason', 'technologies', 'professional'
        ] 