#!/usr/bin/env bash
#
# Este script se encarga de invocar los tres programas que permiten la 
# conversion de un PNG a secuencia de pixeles, se procesan esos pixeles y
# posteriormente se convierte esa secuencia de pixeles a un archivo en formato
# PNG
#
# Autor: John Sanabria - john.sanabria@correounivalle.edu.co
# Fecha: 2024-08-22
#
for i in {1..18}
do
    INPUT_PNG="img$i.jpg"
    TEMP_FILE="img$i.bin"
    WIDTH=$(identify -format "%w" ${INPUT_PNG})
    HEIGHT=$(identify -format "%h" ${INPUT_PNG})
    python3 fromPNG2Bin.py ${INPUT_PNG}
    ./main ${TEMP_FILE} ${WIDTH} ${HEIGHT}
    python3 fromBin2PNG.py ${TEMP_FILE}.new ${WIDTH} ${HEIGHT}
done