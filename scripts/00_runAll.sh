#!/usr/bin/env bash

### execute all training and evaluation steps

# setup workspace for NaLiBaSID experiments
echo Setting up the workspace for NaLiBaSID
echo Starting 01_setup.sh...
bash 01_setup.sh
echo Done!

# train SID models with NaLiBaSID training parameters
echo Training models
echo Starting 02_train.sh...
bash 02_train.sh
echo Done!

