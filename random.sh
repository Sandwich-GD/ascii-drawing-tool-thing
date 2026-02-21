#!/bin/bash

clear
# parancs megad szélességet meg hosszaságot sor-nak meg oszlop-nak
read sor oszlop <<<$(stty size)

# elosszuk mindkét változót kettővel mert a közepét akarjuk az ablaknak
sor=$((sor/2))
oszlop=$((oszlop/2))

while true
do
  # 1 karaktert leir a billentyűzetről, és berakja az "answer" tárolóba
  read -N1 -s answer

  case "$answer" in
    # ha azt "válaszolod" hogy 
    (w) sor=$((sor-1));;
    (s) sor=$((sor+1));;
    (d) oszlop=$((oszlop+1));;
    (a) oszlop=$((oszlop-1));;
  esac
  tput cup $sor $oszlop
  printf X
done

read