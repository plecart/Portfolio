from django.db import models

# Create your models here.

class Project(models.Model):
    title = models.CharField(max_length=200)
    thumbnail = models.ImageField(upload_to='thumbnails/')
    professional = models.BooleanField(default=False)

    def __str__(self):
        return self.title
