#!/usr/bin/env bash

### train SID models with NaLiBaSID training parameters

# copy config files from https://github.com/mainlp/NaLiBaSID/tree/main/configs
echo "Copying config files into MaChAmp directory"
echo "Overwrite files with: y"
cp -i ../configs/sid.json machamp/configs/sid.json
cp -i ../configs/params.json machamp/configs/params.json

cd machamp

# download train data from xSID repository (https://bitbucket.org/robvanderg/xsid/src/master/data/xSID-0.4/)
echo -e "\nDownload English train and valid data from xSID \050Van der Goot et al., 2021\051"
mkdir train_data
cd train_data
curl -LO https://bitbucket.org/robvanderg/xsid/raw/HEAD/data/xSID-0.4/en.train.conll 
curl -LO https://bitbucket.org/robvanderg/xsid/raw/HEAD/data/xSID-0.4/en.valid.conll
cd ..

# model training on 3 different random seeds
echo -e "\nTrain random seed 8446"
python3 train.py --dataset_configs ./configs/sid.json --device 0 --seed 8446 --name mBERT-sid-s8446

echo -e "Train random seed 0212"
python3 train.py --dataset_configs ./configs/sid.json --device 0 --seed 0212 --name mBERT-sid-s0212

echo -e "Train random seed 2301"
python3 train.py --dataset_configs ./configs/sid.json --device 0 --seed 2301 --name mBERT-sid-s2301

cd ..

### trained models can be found in the logs folder
echo -e "\nDone!"