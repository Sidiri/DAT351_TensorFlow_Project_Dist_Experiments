#!/bin/bash

time {
    export CUDA_VISIBLE_DEVICES=$1
#    echo "FROM runOnGpu.sh: ID is $2, batch size is $3"
    python train.py $2 $3

}
