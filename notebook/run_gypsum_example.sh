#!/bin/bash

# please change the following path to your own path
PYTHON_PATH=/home/iwatobipen/miniforge3/envs/gypsum/bin
GYPSUM_PATH=/home/iwatobipen/dev/gypsum_dl


$PYTHON_PATH/python $GYPSUM_PATH/run_gypsum_dl.py -s ../data/sample_molecules.smi -o ./gypsum_out --add_html_output 
