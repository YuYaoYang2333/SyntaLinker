# SyntaLinker (A deep generative model for fragment linking)

This is the code for the "A novel method for fragment linking based on deep generative model" paper found on [ChemRxiv](https://ChemRxiv.org/).

To implement our models we were based on [OpenNMT-py (v0.4.1)](http://opennmt.net/OpenNMT-py/).

## Install requirements

Create a new conda environment:

```bash
conda env create -f environment.yml
conda activate DeepLinker
```

The code was tested for pytorch 1.3.1, to install it go on [Pytorch](https://pytorch.org/get-started/locally/).
Select the right operating system and CUDA version and run the command, e.g.:

```bash
conda install pytorch=1.3.1 torchvision -c pytorch
```


## Pre-processing 
In the experiments we obtain the 

In the experiments we use an open-source datasets (and train/valid/test splits).

The tokenized datasets can be found on the `data/` folder. 

For Input file generation, we the [preprocess.sh]script:

We use a shared vocabulary. The `vocab_size` and `seq_length` are chosen to include the whole datasets.


