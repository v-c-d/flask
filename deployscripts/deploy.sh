#!/bin/sh

rm -rf ~/StatsApp
mkdir -p ~/StatsApp
cp -r /VSTSAgent/_work/r1/a/_v-c-d.flask/drop/ ~/StatsApp
cd ~/StatsApp

python3 -m venv env

source env/bin/activate

# pip install wheel
# pip install uwsgi flask

pip install -r requirements.txt
