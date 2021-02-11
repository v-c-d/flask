#!/bin/sh

echo 'HHHHHHHHHHHHHHHHHEEEEEEEEEEELLLLLLLLLLLLLLLLLOOOOOOOOOOOOOOOOO'
whoami
ls -al
pwd
rm -rf ~/StatsApp
mkdir -p ~/StatsApp
cp -r /VSTSAgent/_work/r1/a/_v-c-d.flask/drop/ ~/StatsApp
cd ~/StatsApp
ls -al
pwd

python3 -m venv env

source env/bin/activate
ls -al
pwd

# pip install wheel
# pip install uwsgi flask

pip install -r /VSTSAgent/_work/r1/a/_v-c-d.flask/drop/requirements.txt
ls -al
pwd
