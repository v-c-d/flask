#!/usr/bin/env bash

whoami
sudo -i -u eltov bash << EOF
echo "In"
whoami

rm -rf ~/StatsApp

cp -r /VSTSAgent/_work/r1/a/_v-c-d.flask/drop/ ~/StatsApp
cd ~/StatsApp
ls -al

python3 -m venv env
source env/bin/activate

# pip install wheel
# pip install uwsgi flask

pip install -r requirements.txt
ls -al
EOF
echo "Out"
whoami
