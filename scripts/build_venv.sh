#!/bin/bash
echo build python virtualenv on $1 from $2

cd $1
if /usr/local/bin/virtualenv __ --no-site-packages --python=python2.7; then
    echo "use /usr/local/bin/virtualenv to build virtualenv"
else
    if /usr/bin/virtualenv __ --no-site-packages --python=python2.7; then
        echo "use /usr/bin/virtualenv"
    else
        echo "all failed, exit"
        exit 1
    fi
fi
. __/bin/activate
pip install --upgrade pip
pip install -r $2
deactivate
