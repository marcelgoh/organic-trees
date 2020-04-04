#!/bin/bash

cat header.ps > temp.ps
cat "$1".ps >> temp.ps
ps2pdf temp.ps "$1".pdf
rm temp.ps
