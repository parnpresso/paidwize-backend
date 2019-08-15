#!/bin/bash

while ! nc -z db 5432; do sleep 1; done

python3 paidwize/manage.py migrate --settings=paidwize.settings.local
python3 paidwize/manage.py runserver 0.0.0.0:8000 --settings=paidwize.settings.local
