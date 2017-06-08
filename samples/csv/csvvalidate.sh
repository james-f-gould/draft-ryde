#!/bin/sh

DATA_DIR=`pwd`

XSD_DIR=${DATA_DIR}/../../xsd

CSVVALIDATOR=~/csvvalidator

DEF_FILE=${DATA_DIR}/$1

# Build the CSVValidator program
gradle -b ${CSVVALIDATOR}/build.gradle installApp

# Go to the directory with the CSVValidator program
cd ${CSVVALIDATOR}/build/install/CSVValidator/bin

# Run the CSVValidator using the local diretories and definition file
./CSVValidator -c ${DATA_DIR} -n 10 -s ${XSD_DIR} -x ${DEF_FILE}
cd -
