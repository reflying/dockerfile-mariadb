#!/bin/bash

source ./download.sh 

[ ! -f conf/my.cnf ] && cp conf/my.cnf.example conf/my.cnf

echo "==> All init is finish!"
