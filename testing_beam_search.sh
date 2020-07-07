
#!/usr/bin/env bash

dataset_name=ChEMBL
model=${dataset_name}_model_average.pt

python translate.py -model checkpoints/${dataset_name}/${model} \
                    -src data/dataset_name/src-test.txt \
                    -output checkpoints/predictions_${model}_on_${dataset_name}_beam10.txt \
                    -batch_size 64 -replace_unk -max_length 200 -beam_size 10 -verbose -n_best 10
