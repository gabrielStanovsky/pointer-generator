#!/bin/sh
# Usage:
#   ./predict.sh <data-folder> <model-folder> <exp-name> <max-enc-steps>
set -e
python run_summarization.py \
    --mode=decode \
    --data_path="$1/finished_files/chunked/val_*" \
    --vocab_path=$2/finished_files/vocab   \
    --log_root=$2/exp/ \
    --exp_name=$3 \
    --max_enc_steps=$4 \
    --max_dec_steps=400 \
    --single_pass=1
