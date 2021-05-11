# 💻  TAQLoRe v1 #

This repository consists of scripts for installation, set-up and execution of the exon based arm of TAQLoRe on a PBS based HPC system.

💡 TAQLoRe github https://github.com/twrzes/TAQLoRe
💡 Exisiting annotation for CACNA1C can be found in /path/to/TAQLoRe_v1/wokdir/input.


### installation.txt ###
- downloading, extracting and editing reference files. 
- For other genes of interest refer to _"How to create ENSEMBL annotation file"_

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
4. check the meta data files - barcode_to_sample_GENENAME.txt and samplenames_GENENAME.txt 
5. when running the test CACNA1C dataset, unzip (using unzip command) the FASTA files and check the format of the filenames (unzip 2017_01_13.barcode01.fa.zip)
6. Check the paths in both scripts and change parameters (if required)
6. Run indexing.pbs (qsub indexing.pbs)
7. Run TAQLoRe_v1_part1.pbs (qsub TAQLoRe_v1.pbs)
8. At the end if part 1, check UTR annotations. Make corrections (if required)
9. Run TAQLoRe_v1_part2.pbs (qsub TAQLoRe_v1.pbs)

