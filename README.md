# 💻  TAQLoRe v1 #

This repository consists of scripts for installation, set-up and execution of the exon based arm of TAQLoRe on a PBS based HPC system.

💡 TAQLoRe github https://github.com/twrzes/TAQLoRe💡 Exisiting annotation for CACNA1C can be found in /path/to/TAQLoRe_v1/wokdir/input. For other genes of interest refer to       _"How to create ENSEMBL annotation file"_


### installation.pbs ###
- downloading, extracting and editing reference files. 

### indexing.pbs ###
- indexing genome and transcriptome references with LAST

### TAQLoRe_v1.pbs ###
- paths to output directories and other parameters need modification
- running part 1 & 2 of the original TAQLoRe pipeline 




#### Running TAQLoRe_v1 for the first time ####
#### Setting up ####
__Use installation.txt as a guide to perform the following tasks__
1. install conda and addtional programs using conda
2. use the YAML file (envs/taqlore.yaml) to set up the conda env
3. download and edit reference files from GENCODE
4. check the meta data files - barcode_to_sample.txt and samplenames_CACNA1C.txt 
5. when running the test CACNA1C dataset, unzip (using unzip command) the FASTA files and check the format of the filenames

