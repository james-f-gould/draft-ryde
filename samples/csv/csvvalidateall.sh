#!/bin/sh

echo "Validate good-full-deposit-csv.xml"
csvvalidate.sh good-full-deposit-csv.xml

echo "Validate good-diff-deposit-csv.xml"
csvvalidate.sh good-diff-deposit-csv.xml
