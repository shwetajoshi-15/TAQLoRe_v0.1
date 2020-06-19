#!/usr/bin/env Rscript
library("optparse")
library("dplyr")


option_list = list(
  make_option(c("-f", "--file"), type="character", default=NULL,
              help="meta gene genomic coord file name", metavar="character"),
    make_option(c("-u", "--utr"), type="character", default=NULL,
              help="gene specific UTR annotation bed", metavar="character"),
        make_option(c("-o", "--out"), type="character", default=NULL,
              help="UTR annotated genomic coord", metavar="character")
);

opt_parser = OptionParser(option_list=option_list);
opt = parse_args(opt_parser);

if (is.null(opt$file)){
  print_help(opt_parser)
  stop("At least one argument must be supplied (input file).n", call.=FALSE)
}


meta_gene <- read.delim(opt$file, header = FALSE)
colnames(meta_gene) <- c("start1", "end1", "start2", "end2", "transcript", "exon")


bed <- read.delim(opt$utr, header = FALSE, sep = " ")
colnames(bed) <- c("chr", "start", "end")

UTR_anno <- meta_gene$start2 %in% bed$start | meta_gene$end2 %in% bed$end


new_meta_gene<- cbind(meta_gene, UTR=UTR_anno)

new_meta_gene <- new_meta_gene %>% replace(.=="TRUE", "UTR")
new_meta_gene <- new_meta_gene %>% replace(.=="FALSE", "NA")


write.table(new_meta_gene, file = opt$out, sep = "\t", row.names = F, col.names = F, quote = F)
   
