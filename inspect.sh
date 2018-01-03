#!/bin/sh
# Usage:
#   ./inspect.sh <data-folder> <exp-name>
set -e
python run_summarization.py \
    --mode=decode \
    --data_path="$1/finished_files/chunked/val_*" \
    --vocab_path=$1/finished_files/vocab   \
    --log_root=$1/exp/ \
    --exp_name=$2 \
    --max_enc_steps=100 \
    --max_dec_steps=400 \

