#!/bin/bash

clear;
cqlsh 192.168.1.159 -e "TRUNCATE engine.domain"
rm temp
