
#!/usr/bin/env bash

"""
dataset_name=ChEMBL
model=${dataset_name}_model_average.pt

python translate.py -model checkpoints/${dataset_name}/${model} \
                    -src data/dataset_name/src-test.txt \
                    -output checkpoints/predictions_${model}_on_${dataset_name}_beam10.txt \
                    -batch_size 64 -replace_unk -max_length 200 -beam_size 10 -verbose -n_best 10
"""

"""
dataset_name=ChEMBL
src_file = 
src_dir =
model=${dataset_name}_model_average.pt
seed = i

python translate.py -model experiments/checkpoints/${dataset}/${model} \
                    -src ${src_dir}/${src_file} \
                    -output ${src_dir}/predictions_${model}_on_${src_file}_beam_seed_${i}.txt \
                    -replace_unk -max_length 200 \
                    -seed ${i} -beam_size 1 -batch_size 256 \
                    -random_sampling_topk 30 -random_sampling_temp 2 -verbose
"""
