# SESAME-BERT

Code for the paper "SesameBERT: Attention for Anywhere". The code is based on google-research/bert .

## Requirements

For running the code follwing dependies are required :

1. google-research/bert 
2. pip install numpy, tensorflow 

## Datasets

All these datasets can be found in https://github.com/nyu-mll/GLUE-baselines

## Getting Started

GLUE BENCHMARK
```
sh sesame-bert.sh
sh bert.sh
```

HANS Evaluation Set
```
python evaluate_heur_output.py ./bert_output/ADV/ADV.tsv 1>./bert_output/ADV/eval_hans.txt
```

## Cite

```
@article{Su2019SesameBERT,
  title={SesameBERT},
  author={Ta-Chun Su and Hsiang-Chih Cheng},
  year={2019}
}
```
