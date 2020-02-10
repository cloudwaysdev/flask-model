#!/bin/sh
source venv/bin/activate
source .flaskenv
flask db upgrade
#flask translate compile
exec gunicorn -b :5000 --access-logfile - --error-logfile - microblog:app