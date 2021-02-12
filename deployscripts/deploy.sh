#!/usr/bin/env bash

whoami
sudo -i -u eltov bash << EOF
echo "In"
whoami

rm -rf ~/StatsApp

cp -r /VSTSAgent/_work/r1/a/_v-c-d.flask/drop/ ~/StatsApp
cd ~/StatsApp

python3 -m venv env
source env/bin/activate

pip install -r requirements.txt
EOF
echo "Out"
whoami
