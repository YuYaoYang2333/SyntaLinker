
#!/usr/bin/env bash


# 1. Sampling scripts mainly for Case studies, which can generate multiple molecules during a single sampling by setting the n_best & beam_size. 

"""
dataset_name=ChEMBL
model=${dataset_name}_model_average.pt

python translate.py -model checkpoints/${dataset_name}/${model} \
                    -src data/dataset_name/src-test.txt \
                    -output checkpoints/predictions_${model}_on_${dataset_name}_beam10.txt \
                    -batch_size 64 -replace_unk -max_length 200 -beam_size 10 -verbose -n_best 10
"""


# 2. Sampling scripts mainly for model evaluation, which can generate multiple molecules during multiple sampling by setting the seed. 
# Stochastic Beam search strategy 

"""
   -beam_size = 1" means using Beam search strategy \
   -random_sampling_topk" means the width of beam search \
   -random_sampling_temp" can be used to regulate the diversity of the generated molecules.
"""


"""
dataset_name=ChEMBL
src_file = 
src_dir =
model=${dataset_name}_model_average.pt

num_sampling=250 # TOP-250 // 

for ((i=0;i<num_sampling;i++));

do
s=$RANDOM # random seeds
#echo $s

python translate.py -model experiments/checkpoints/${dataset}/${model} \
                    -src ${src_dir}/${src_file} \
                    -output ${src_dir}/predictions_${model}_on_${src_file}_beam_seed_${s}.txt \
                    -replace_unk -max_length 200 \
                    -seed $s -beam_size 1 -batch_size 256 \
                    -random_sampling_topk 30 -random_sampling_temp 2 -verbose
done

find ${src_dir}/ -name predictions_${model}_on_${src_file}_beam_seed_* | xargs paste -d "\n" >> ${src_dir}/predictions_${model}_on_${src_file}_beam_${num_sampling}.txt

find ${src_dir}/ -name predictions_${model}_on_${src_file}_beam_seed_* | xargs rm -f

"""
