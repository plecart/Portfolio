from django.contrib import admin
from .models import Project, Technology
from django.utils.html import format_html

@admin.register(Technology)
class TechnologyAdmin(admin.ModelAdmin):
    list_display = ('name', 'type', 'icon_tag')
    list_filter = ('type',)
    search_fields = ('name',)

    def icon_tag(self, obj):
        if obj.icon:
            return format_html('<img src="{}" width="30" height="30" style="object-fit:cover;" />', obj.icon)
        return ""
    icon_tag.short_description = 'Icon'

@admin.register(Project)
class ProjectAdmin(admin.ModelAdmin):
    list_display = ('title', 'client', 'platform', 'project_type', 'thumbnail_tag')
    list_filter = ('project_type', 'platform', 'technologies')
    search_fields = ('title', 'client')
    filter_horizontal = ('technologies',)
    fieldsets = (
        (None, {
            'fields': ('title', 'client', 'thumbnail', 'platform', 'project_type')
        }),
        ('Description', {
            'fields': ('project_description', 'project_reason')
        }),
        ('Technologies', {
            'fields': ('technologies',)
        }),
    )

    def thumbnail_tag(self, obj):
        if obj.thumbnail:
            return format_html('<img src="{}" width="50" height="50" style="object-fit:cover;" />', obj.thumbnail.url)
        return ""
    thumbnail_tag.short_description = 'Thumbnail'
