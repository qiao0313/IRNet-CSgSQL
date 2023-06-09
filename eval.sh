# Copyright (c) Microsoft Corporation.
# Licensed under the MIT license.

#!/bin/bash

devices=0
save_name=saved_model/saved_model1673318065/eval.txt

# CUDA_VISIBLE_DEVICES=$devices python -u eval.py --dataset ./data \
# --glove_embed_path ./pretrained_models/sgns.baidubaike.bigram-char \
# --cuda \
# --epoch 50 \
# --loss_epoch_threshold 50 \
# --sketch_loss_coefficie 1.0 \
# --beam_size 5 \
# --seed 90 \
# --save ${save_name} \
# --embed_size 300 \
# --sentence_features \
# --column_pointer \
# --hidden_size 300 \
# --lr_scheduler \
# --lr_scheduler_gammar 0.5 \
# --att_vec_size 300 \
# --load_model ./saved_model/saved_model1673318065/best_model.model

python sem2SQL.py --data_path ./data --input_path predict_lf.json --output_path ${save_name}
