#!/bin/bash




# 1 is runId
# 2 is num_gpus

num_gpus=$2
gpus=($(seq 0 1 $num_gpus))
runId=$1

batch_size=10

time {
    for gpu in "${gpus[@]}"; do
	echo "GPU is set to $gpu"
	echo "Batch size is $batch_size"
	echo "FROM parallelRun_new.sh: runID is $runId"
	./runOnGpu.sh $gpu $runId $batch_size &
	batch_size=100
	echo "Batch size is set to $batch_size"
	runId=$(($runId + 1))
done
}


