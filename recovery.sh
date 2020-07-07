
#!/usr/bin/env bash

dataset_name=ChEMBL
model=${dataset_name}_model_average

python score_predictions.py -targets data/${dataset_name}/tgt-test.txt \
				                    -beam_size 10 -invalid_smiles \
                   		      -predictions checkpoints/$dataset_name/predictions_${model}_on_${dataset_name}_beam10.txt
