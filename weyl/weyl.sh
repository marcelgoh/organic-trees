#!/bin/bash

filenames=("pi" "e" "einv" "gamma" "sqrt2" "sqrt3" "sqrt5" "sqrtpi" "ln2" "phi" "lnphi")
numnodes=("70" "300" "300" "300" "250" "200" "250" "200" "300" "300" "80")
consts=("3.1415926536" "2.718281828" "0.3678794412" "0.57721566" "1.41421356" "1.7320508076" "2.2360679775" "1.7724538509" "0.6931471805" "1.6180359887" "0.4812118251")

for i in ${!filenames[@]}; do
    cat ../header.ps > ${filenames[$i]}.ps
    echo "\n${numnodes[$i]} 0 0.4 INIT_PARAMS" >> ${filenames[$i]}.ps
    echo "/irrat ${consts[$i]} def\n/acc 0 def\n" >> ${filenames[$i]}.ps
    cat ./footer.ps >> ${filenames[$i]}.ps
done

tex weyl.tex && dvipdfm weyl.dvi

for name in ${filenames[@]}; do
    rm $name.ps
done
