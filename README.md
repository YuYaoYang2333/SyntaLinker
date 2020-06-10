# SyntaLinker (Automatic Fragment Linking with Deep Conditional Transformer Neural Networks)

This is the code for the "SyntaLinker: Automatic Fragment Linking with Deep Conditional Transformer Neural Networks" paper found on [ChemRxiv](https://ChemRxiv.org/).

To implement our models we were based on [OpenNMT-py (v0.4.1)](http://opennmt.net/OpenNMT-py/).

## Install requirements

Create a new conda environment:

```bash
conda env create -f environment.yml
conda activate SyntaLinker
```

## Pre-processing 

The tokenized datasets can be found on the `data/` folder. 

For Input file generation, we the [preprocess.sh]script:

We use a shared vocabulary. The `vocab_size` and `seq_length` are chosen to include the whole datasets.


## Training

The data has already been preprocessed for training the SyntaLinker

Model training can be started by running the [training.sh]script

To achieve the best results with single models, we average the last 10 checkpoints by running [average_models.sh].


## Testing (beam search)

To generate the predictions use the `translate.py` script:

Model testing of beam search can be started by running the [testing_beam_search.sh]script.

# Metrics

Run the the [recovery.sh]script to get the top-10 recovery.
The other metrics, such as RMSD, 3D smiliarity in case study can be found in `Utils/` folder.

## Citation

If you find this work useful in your research, please consider citing the paper:
"SyntaLinker: Automatic Fragment Linking with Deep Conditional Transformer Neural Networks".




