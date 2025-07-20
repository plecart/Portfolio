import favicon
from django.db import models

# Create your models here.

class Technology(models.Model):
    FRONT = 'FRONT'
    BACK = 'BACK'
    OTHER = 'OTHER'
    TYPE_CHOICES = [
        (FRONT, 'Front'),
        (BACK, 'Back'),
        (OTHER, 'Other'),
    ]
    name = models.CharField(max_length=100)
    website = models.URLField(blank=True, null=True)
    icon = models.URLField(blank=True, null=True)
    type = models.CharField(max_length=10, choices=TYPE_CHOICES)

    def save(self, *args, **kwargs):
        if self.website:
            try:
                icons = favicon.get(self.website)
                if icons:
                    self.icon = icons[0].url
            except Exception:
                self.icon = None
        super().save(*args, **kwargs)

    def __str__(self):
        return self.name

class Project(models.Model):
    WEB = 'web'
    MOBILE = 'mobile'
    PLATFORM_CHOICES = [
        (WEB, 'Web'),
        (MOBILE, 'Mobile'),
    ]
    SCHOOL = 'SCHOOL'
    PROFESSIONAL = 'PROFESSIONAL'
    PERSONAL = 'PERSONAL'
    PROJECT_TYPE_CHOICES = [
        (SCHOOL, 'School'),
        (PROFESSIONAL, 'Professional'),
        (PERSONAL, 'Personal'),
    ]
    title = models.CharField(max_length=200)
    client = models.CharField(max_length=200, blank=True, null=True)
    thumbnail = models.ImageField(upload_to='thumbnails/')
    platform = models.CharField(max_length=10, choices=PLATFORM_CHOICES)
    project_description = models.TextField()
    project_reason = models.TextField(blank=True, null=True)
    technologies = models.ManyToManyField(Technology, blank=True)
    project_type = models.CharField(max_length=20, choices=PROJECT_TYPE_CHOICES, default=PERSONAL)

    def __str__(self):
        return self.title
