# Generated by Django 3.1.2 on 2020-12-02 21:19

from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('listings', '0003_auto_20201130_1517'),
    ]

    operations = [
        migrations.RenameField(
            model_name='listing',
            old_name='state',
            new_name='province',
        ),
    ]