# Generated by Django 5.2.4 on 2025-07-20 15:47

from django.db import migrations, models


class Migration(migrations.Migration):

    initial = True

    dependencies = [
    ]

    operations = [
        migrations.CreateModel(
            name='Technology',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('name', models.CharField(max_length=100)),
                ('website', models.URLField(blank=True, null=True)),
                ('icon', models.URLField(blank=True, null=True)),
                ('type', models.CharField(choices=[('FRONT', 'Front'), ('BACK', 'Back'), ('OTHER', 'Other')], max_length=10)),
            ],
        ),
        migrations.CreateModel(
            name='Project',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('title', models.CharField(max_length=200)),
                ('client', models.CharField(blank=True, max_length=200, null=True)),
                ('thumbnail', models.ImageField(upload_to='thumbnails/')),
                ('platform', models.CharField(choices=[('web', 'Web'), ('mobile', 'Mobile')], max_length=10)),
                ('project_description', models.TextField()),
                ('project_reason', models.TextField(blank=True, null=True)),
                ('professional', models.BooleanField(default=False)),
                ('technologies', models.ManyToManyField(blank=True, to='portfolio.technology')),
            ],
        ),
    ]
