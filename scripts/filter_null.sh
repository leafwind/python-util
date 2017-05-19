#!/bin/bash
# usage: ./filter_null.sh -f [filename]
# Python subprocess.call will produce TypeError: execv() arg 2 must contain only strings
# So instead, use subprocess.call('./filter_null.sh -f [filename]', shell=True)

set -o errexit

while getopts f: option
do
    case "${option}" in
        f) FILENAME=${OPTARG};;
    esac
done

echo "start replacing null char in ${FILENAME}..."

sed -i -e "s/\x00//g" $FILENAME
