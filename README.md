# Slot and Intent Detection Resources for Bavarian and Lithuanian: Assessing Translations vs Natural Queries to Digital Assistants

- We present **NaBaLiSID** (**Na**tural **Li**thuanian and **Ba**varian **SID**), which contains new slot and intent detection evaluation datasets for Bavarian and Lithuanian, created by manual translation and adopting the translation and annotation schemes used by [van der Goot et al. (2021)](https://aclanthology.org/2021.naacl-main.197/) for xSID. 

- We collect natural datasets of utterances from native speakers to be able to evaluate on more realistic data.

- For Bavarian, we further present translations of a part of the large MASSIVE [(FitzGerald et al., 2023)](https://aclanthology.org/2023.acl-long.235/) dataset to Bavarian to evaluate the effect of transferring to a low-resource language without orthography in a cross-datasets setting.

- We evaluate the performance of cross-lingual language models on our translated and native data, to gauge the effect of having natural utterances versus translations for SID.

### Corpus Statistics
TODO

### How to use this repository?
- `data`: NaLiBaSID datasets
  - **de-ba.test** & **.valid**: Bavarian xSID translations *de-ba*
  - **lt.test** & **.valid**: Lithuanian xSID translations *lt*
  - **de-ba.MAS.test** + **.valid**: Bavarian MASSIVE translation *MAS:de-ba*
  - **de-ba.xMAS.test** + **.valid**: Bavarian xSID + MASSIVE translations *xMAS:de-ba*
  - **de-ba.nat**: Natural Bavarian data *nat:de-ba*
  - **lt.nat**: Natural Lithuanian data *nat:lt*

### Paper
TODO

