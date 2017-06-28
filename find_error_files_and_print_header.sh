#!/bin/bash

BASE="location"
DATE="unique_date"

yes| rm errors.txt
echo $BASE$DATE >> errors.txt
echo >> errors.txt

find $BASE$DATE -type f -name "*.err" -print | while read filename
do
	basename "${filename}" >> errors.txt
	head -1 "${filename}" >> errors.txt
	echo >> errors.txt
done
chmod 755 errors.txt
