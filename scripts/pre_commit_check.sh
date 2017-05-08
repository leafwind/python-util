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
pyflakes app/ scripts/

echo "# -------------------"
echo "# pylint"
echo "# -------------------"
pylint -d all -e W0611,W0612,W0613,W0614 --reports=n --msg-template='{msg_id} {path}:{line} {msg} ({symbol})' app/ scripts/
