#!/usr/bin/env bash


dataset_name=ChEMBL
python preprocess.py -train_src data/${dataset_name}/src-train \
                     -train_tgt data/${dataset_name}/tgt-train \
                     -valid_src data/${dataset_name}/src-val \
                     -valid_tgt data/${dataset_name}/tgt-val \
                     -save_data data/${dataset_name}/${dataset} \
                     -src_seq_length 1000 -tgt_seq_length 1000 \
                     -src_vocab_size 1000 -tgt_vocab_size 1000 -share_vocab
