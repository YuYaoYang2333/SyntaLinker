#!/usr/bin/env bash

dataset_name=ChEMBL

datadir=checkpoints/ChEMBL

model=$datadir/${dataset_name}_model_average.pt

python average_models.py -p datadir -o model
