#!/bin/bash
source __/bin/activate

echo "# -------------------"
echo "# running nosetests"
echo "# -------------------"
# nosetests tests --with-coverage --cover-inclusive --cover-package=app
nosetests tests

echo "# -------------------"
echo "# pyflakes"
echo "# -------------------"
pyflakes highlight.py time_utils.py utils.py

echo "# -------------------"
echo "# pylint"
echo "# -------------------"
pylint -d all -e W0611,W0612,W0613,W0614 --reports=n --msg-template='{msg_id} {path}:{line} {msg} ({symbol})' highlight.py time_utils.py utils.py

echo "# -------------------"
echo "# vulture"
echo "# -------------------"
vulture highlight.py time_utils.py utils.py
