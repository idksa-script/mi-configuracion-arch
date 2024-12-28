#!/bin/bash

nombre=$(date +"%d-%m-%Y_%H:%M:%S.png")

scrot -s "/home/bsap/Screenshot/$nombre" && xclip -selection clipboard -t image/png -i "/home/bsap/Screenshot/$nombre"
