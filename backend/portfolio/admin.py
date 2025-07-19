from django.contrib import admin
from .models import Project
from django.utils.html import format_html

@admin.register(Project)
class ProjectAdmin(admin.ModelAdmin):
    list_display = ('title', 'professional', 'thumbnail_tag')
    list_filter = ('professional',)
    search_fields = ('title',)

    def thumbnail_tag(self, obj):
        if obj.thumbnail:
            return format_html('<img src="{}" width="50" height="50" style="object-fit:cover;" />', obj.thumbnail.url)
        return ""
    thumbnail_tag.short_description = 'Thumbnail'
