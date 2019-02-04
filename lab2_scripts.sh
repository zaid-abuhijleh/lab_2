#!/bin/bash
# Authors : Zaid Abu-Hijleh
# Date: 1/1/2019

#Problem 1 Code:
#Make sure to document how you are solving each problem!

echo "Enter a file name: "
read fileName;
echo "Enter a Regular Expression: "
read regEx;

grep $regEx $fileName 

echo "Phone number count: "
grep '[0-9]\{3\}-[0-9]\{3\}-[0-9]{4\}' $fileName | wc -l

echo "Email count: "
grep '@' $fileName | grep '.com$' | wc -l

grep '303-[0-9]\{3\}-[0-9]\{4\}' $fileName > phone_results.txt

grep '@geocities.com$' $fileName > email_results.txt