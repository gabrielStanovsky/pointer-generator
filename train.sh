#!/bin/sh
#   ./train.sh <data-folder> <exp-name>
python run_summarization.py \
    --mode=train \
    --data_path="$1/finished_files/chunked/train_*" \
    --vocab_path=$1/finished_files/vocab  \
    --log_root=$1/exp/ \
    --exp_name=$2 \
    --max_enc_steps=400 \
    --max_dec_steps=400
