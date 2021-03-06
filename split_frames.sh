#!/bin/bash

#$1 = FILE, $2 = Video Length, $3 = Frames wanted
echo "Splitting a video file into frames."

IMAGE_LENGTH = {$3/$2}
mkdir ./model
mkdir ./model/images
mkdir ./model/annotations

./sub_utilities/src/network_wrapper/training/scripts/split.sh $1 ./model/images $IMAGE_LENGTH

cd labelImg/
python3 labelImg.py ../model/images/