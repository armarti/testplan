#!/bin/sh

source venv/bin/activate
python -m testplan.web_ui.web_app &
trap "kill $!" EXIT
sleep 1
open http://127.0.0.1:5000/
while [ 1 ]; do true; done  # wait for CTRL+C or smth