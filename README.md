# Slot and Intent Detection Resources for Bavarian and Lithuanian: Assessing Translations vs Natural Queries to Digital Assistants

- We present **NaBaLiSID** (**Na**tural **Li**thuanian and **Ba**varian **SID**), which contains new slot and intent detection evaluation datasets for Bavarian and Lithuanian, created by manual translation and adopting the translation and annotation schemes used by [van der Goot et al. (2021)](https://aclanthology.org/2021.naacl-main.197/) for xSID. 

- We collect natural datasets of utterances from native speakers to be able to evaluate on more realistic data.

- For Bavarian, we further present translations of a part of the large MASSIVE ([FitzGerald et al., 2023](https://aclanthology.org/2023.acl-long.235/)) dataset to Bavarian to evaluate the effect of transferring to a low-resource language without orthography in a cross-datasets setting.

- We evaluate the performance of cross-lingual language models on our translated and native data with the MaChAmp toolkit ([van der Goot et al., 2021](https://aclanthology.org/2021.eacl-demos.22/)), to gauge the effect of having natural utterances versus translations for SID.

### Corpus Statistics
![corp_stats](https://github.com/mainlp/NaLiBaSID/assets/92130844/c02be2f4-0cae-4046-8308-124c9f47d2bb)

### How to use this repository?
- `data`: annotated NaLiBaSID datasets
  - **de-ba.test** & **.valid**: Bavarian xSID translations *de-ba*
  - **lt.test** & **.valid**: Lithuanian xSID translations *lt*
  - **de-ba.MAS.test** + **.valid**: Bavarian MASSIVE translation *MAS:de-ba*
  - **de-ba.xMAS.test** + **.valid**: Bavarian xSID + MASSIVE translations *xMAS:de-ba*
  - **de-ba.nat**: Natural Bavarian data *nat:de-ba*
  - **lt.nat**: Natural Lithuanian data *nat:lt*
 - `configs`:
   - MaChAmp dataset and parameter configs used for producing the results presented in the paper
 - `scripts`:
   - Run every step with `scripts/00_runAll.sh` (including training which may lead to a long duration)
   - Alternatively run each step individually with the provided scripts
   - Let the models predict on the test data with MaChAmp's `predict.py`
   - Script for metric calculations is not included. Please refer to [`nluEval.py`](https://bitbucket.org/robvanderg/xsid/src/master/scripts/nluEval.py) (implementation by [van der Goot et al. (2021)](https://aclanthology.org/2021.eacl-demos.22/)).
 - `predictions`:
   - Output predictions and model scores. Produced with MaChAmp's `predict.py`
   - `whole_data` contains the natural datasets that are not split into test and development sets
   - `test_data` and `valid_data` also include the predictions on the English and German xSID datasets

### Paper
TODO

### Acknowledgement
This work is supported by ERC Consolidator Grant DIALECT no. 101043235.
