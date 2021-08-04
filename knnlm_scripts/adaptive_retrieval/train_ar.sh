#!/bin/bash

# declare -a f_list=("all" "ctxt" "ctxt,freq,lm_ent,lm_max" "ctxt,lm_ent,lm_max" "ctxt,lm_ent,lm_max,fert" "freq" "fert" "lm_ent,lm_max" "freq,lm_ent,lm_max" "lm_ent,lm_max,fert")
# declare -a f_list=("ctxt,fert" "ctxt,freq,fert" "ctxt,freq")

dataset="wikitext103-valid"
train="datasets/${dataset}/train"
val="datasets/${dataset}/valid"
l1=0.05
# feature="ctxt,freq,lm_ent,lm_max"
feature="all"

bash knnlm_scripts/utils_cmd/train_moe.sh ${dataset} ${train} ${val} ${l1} ${feature}

