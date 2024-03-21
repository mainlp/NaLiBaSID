#!/usr/bin/env bash

### setup workspace for NaLiBaSID experiments

# install requirements
echo "Installing requirements"
pip3 install --user -r requirements.txt || pip install --user -r requirements.txt

# get machamp toolkit
echo -e "\nCloning MaChAmp \050Van der Goot et al., 2021\051"
git clone https://github.com/machamp-nlp/machamp.git

echo -e "\nDone!"