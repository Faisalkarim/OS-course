#! /bin/bash
a=24
b=3
c=4
wta=0
wtb=$a
wtc=$((a+b))
wt=$((wta+wtb+wtc))
echo "scale=5; $wt/3"| bc
