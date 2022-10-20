(base) mayte@Mayte:~/Descargas$ R

R version 3.6.3 (2020-02-29) -- "Holding the Windsock"
Copyright (C) 2020 The R Foundation for Statistical Computing
Platform: x86_64-pc-linux-gnu (64-bit)

R es un software libre y viene sin GARANTIA ALGUNA.
Usted puede redistribuirlo bajo ciertas circunstancias.
Escriba 'license()' o 'licence()' para detalles de distribucion.

R es un proyecto colaborativo con muchos contribuyentes.
Escriba 'contributors()' para obtener más información y
'citation()' para saber cómo citar R o paquetes de R en publicaciones.

Escriba 'demo()' para demostraciones, 'help()' para el sistema on-line de ayuda,
o 'help.start()' para abrir el sistema de ayuda HTML con su navegador.
Escriba 'q()' para salir de R.

> library(ChIPseeker)

Bioconductor version 3.10 (BiocManager 1.30.12), ?BiocManager::install for help
Bioconductor version '3.10' is out-of-date; the current release version '3.12'
  is available with R version '4.0'; see https://bioconductor.org/install
Registered S3 method overwritten by 'enrichplot':
  method               from
  fortify.enrichResult DOSE
ChIPseeker v1.22.1  For help: https://guangchuangyu.github.io/software/ChIPseeker

If you use ChIPseeker in published research, please cite:
Guangchuang Yu, Li-Gen Wang, Qing-Yu He. ChIPseeker: an R/Bioconductor package for ChIP peak annotation, comparison and visualization. Bioinformatics 2015, 31(14):2382-2383
> library(clusterProfiler)
clusterProfiler v3.14.3  For help: https://guangchuangyu.github.io/software/clusterProfiler

If you use clusterProfiler in published research, please cite:
Guangchuang Yu, Li-Gen Wang, Yanyan Han, Qing-Yu He. clusterProfiler: an R package for comparing biological themes among gene clusters. OMICS: A Journal of Integrative Biology. 2012, 16(5):284-287.
> files <- getSampleFiles("atacipsislhx.bed")
Error in getSampleFiles("atacipsislhx.bed") : 
  unused argument ("atacipsislhx.bed")
> bed <- read.bed("atacipsislhx.bed")
Error in read.bed("atacipsislhx.bed") : 
  no se pudo encontrar la función "read.bed"
> bed <- read.table("atacipsislhx.bed")
> head(bed)
    V1      V2      V3 V4            V5 V6
1 chr1 3671626 3671637  1 MA0506.1.NRF1  +
2 chr1 3671735 3671746  2 MA0506.1.NRF1  -
3 chr1 4807738 4807749  3 MA0506.1.NRF1  +
4 chr1 4807737 4807748  4 MA0506.1.NRF1  -
5 chr1 5019372 5019383  5 MA0506.1.NRF1  -
6 chr1 6441365 6441376  6 MA0506.1.NRF1  +
> library("TxDb.Mmusculus.UCSC.mm10.knownGene")
Loading required package: GenomicFeatures
Loading required package: BiocGenerics
Loading required package: parallel

Attaching package: ‘BiocGenerics’

The following objects are masked from ‘package:parallel’:

    clusterApply, clusterApplyLB, clusterCall, clusterEvalQ,
    clusterExport, clusterMap, parApply, parCapply, parLapply,
    parLapplyLB, parRapply, parSapply, parSapplyLB

The following objects are masked from ‘package:stats’:

    IQR, mad, sd, var, xtabs

The following objects are masked from ‘package:base’:

    anyDuplicated, append, as.data.frame, basename, cbind, colnames,
    dirname, do.call, duplicated, eval, evalq, Filter, Find, get, grep,
    grepl, intersect, is.unsorted, lapply, Map, mapply, match, mget,
    order, paste, pmax, pmax.int, pmin, pmin.int, Position, rank,
    rbind, Reduce, rownames, sapply, setdiff, sort, table, tapply,
    union, unique, unsplit, which, which.max, which.min

Loading required package: S4Vectors
Loading required package: stats4

Attaching package: ‘S4Vectors’

The following object is masked from ‘package:base’:

    expand.grid

Loading required package: IRanges
Loading required package: GenomeInfoDb
Loading required package: GenomicRanges
Loading required package: AnnotationDbi
Loading required package: Biobase
Welcome to Bioconductor

    Vignettes contain introductory material; view with
    'browseVignettes()'. To cite Bioconductor, see
    'citation("Biobase")', and for packages 'citation("pkgname")'.

> library(annotables)
Error in library(annotables) : there is no package called ‘annotables’
> library(org.Mm.eg.db)

> samplefiles <- list.files("atacipsislhx.bed", pattern= ".bed", full.names=T)
> samplefiles <- as.list(samplefiles)
> txdb <- TxDb.Mmusculus.UCSC.mm10.knownGene
> peakAnnoList <- lapply(samplefiles, annotatePeak, TxDb=txdb, 
+                        tssRegion=c(-1000, 1000), verbose=FALSE)
> write.csv(peakAnnoList, "atacannotatelhxs.csv")
> plotAnnoPie(peakAnnoList)
Error in (function (classes, fdef, mtable)  : 
  unable to find an inherited method for function ‘plotAnnoPie’ for signature ‘"list"’
> peakAnnoList
list()
> samplefiles
list()
> 
> samplefiles <- list.files("atacipsislhx.bed", pattern= ".bed", full.names=T)
> 
> samplefiles
character(0)
> samplefiles <- list.files("atacipsislhx.bed", pattern= ".bed", full.names=T)
> samplefiles
character(0)
> files <- getSampleFiles("atacipsislhx.bed")
Error in getSampleFiles("atacipsislhx.bed") : 
  unused argument ("atacipsislhx.bed")
> bed <- read.table("atacipsislhx.bed")
> head(bed)
    V1      V2      V3     V4            V5     V6
1  chr   start     end peakID         motif strand
2 chr1 3671626 3671637      1 MA0506.1.NRF1      +
3 chr1 3671735 3671746      2 MA0506.1.NRF1      -
4 chr1 4807738 4807749      3 MA0506.1.NRF1      +
5 chr1 4807737 4807748      4 MA0506.1.NRF1      -
6 chr1 5019372 5019383      5 MA0506.1.NRF1      -
> bed <- read.table("atacipsislhx.bed", header = TRUE)
> head(bed)
   chr   start     end peakID         motif strand
1 chr1 3671626 3671637      1 MA0506.1.NRF1      +
2 chr1 3671735 3671746      2 MA0506.1.NRF1      -
3 chr1 4807738 4807749      3 MA0506.1.NRF1      +
4 chr1 4807737 4807748      4 MA0506.1.NRF1      -
5 chr1 5019372 5019383      5 MA0506.1.NRF1      -
6 chr1 6441365 6441376      6 MA0506.1.NRF1      +
> samplefiles <- list.files(bed, pattern= ".bed", full.names=T)
Error in list.files(bed, pattern = ".bed", full.names = T) : 
  argumento 'path' inválido
> iocLite("rtracklayer")
Error in iocLite("rtracklayer") : 
  no se pudo encontrar la función "iocLite"
> biocLite("rtracklayer")
Error in biocLite("rtracklayer") : 
  no se pudo encontrar la función "biocLite"
> library("rtracklayer")
> import("atacipsislhx.bed", format="bed", header=T)
Error in .local(con, format, text, ...) : unused argument (header = T)
> import("atacipsislhx.bed", format="bed")
Error in scan(file = file, what = what, sep = sep, quote = quote, dec = dec,  : 
  scan() esperaba 'a real', obtuvo 'MA0506.1.NRF1'
> import("atacipsislhx2.bed", format="bed")
GRanges object with 9820 ranges and 1 metadata column:
         seqnames              ranges strand |        name
            <Rle>           <IRanges>  <Rle> | <character>
     [1]     chr1     3671627-3671637      * |           1
     [2]     chr1     3671736-3671746      * |           2
     [3]     chr1     4807739-4807749      * |           3
     [4]     chr1     4807738-4807748      * |           4
     [5]     chr1     5019373-5019383      * |           5
     ...      ...                 ...    ... .         ...
  [9816]     chrX 161908824-161908831      * |        9816
  [9817]     chrX 162087636-162087643      * |        9817
  [9818]     chrX 166441726-166441733      * |        9818
  [9819]     chrX 167206363-167206370      * |        9819
  [9820]     chrX 167315704-167315711      * |        9820
  -------
  seqinfo: 21 sequences from an unspecified genome; no seqlengths
> import("atacipsislhx2.bed", format="bed")
Error in .local(x, ...) : strand values must be in '+' '-' '*'
> import("atacipsislhx2.bed", format="bed")
Error in scan(file = file, what = what, sep = sep, quote = quote, dec = dec,  : 
  scan() esperaba 'a real', obtuvo '+'
> import("atacipsislhx2.bed", format="bed")

GRanges object with 9820 ranges and 1 metadata column:
         seqnames              ranges strand |        name
            <Rle>           <IRanges>  <Rle> | <character>
     [1]     chr1     3671627-3671637      * |           1
     [2]     chr1     3671736-3671746      * |           2
     [3]     chr1     4807739-4807749      * |           3
     [4]     chr1     4807738-4807748      * |           4
     [5]     chr1     5019373-5019383      * |           5
     ...      ...                 ...    ... .         ...
  [9816]     chrX 161908824-161908831      * |        9816
  [9817]     chrX 162087636-162087643      * |        9817
  [9818]     chrX 166441726-166441733      * |        9818
  [9819]     chrX 167206363-167206370      * |        9819
  [9820]     chrX 167315704-167315711      * |        9820
  -------
  seqinfo: 21 sequences from an unspecified genome; no seqlengths
> bed2 <- import("atacipsislhx2.bed", format="bed")
> peakAnno <- annotatePeak(bed2, tssRegion=c(-3000, 3000), TxDb=txdb)
>> preparing features information...		 2021-04-13 17:58:45 


> tabla <- as.data.frame(peakAnno)
> write.csv(table,"atacipsisanno.csv")

 peakAnno <- annotatePeak(bed2, tssRegion=c(-3000, 3000), TxDb=txdb, annoDb="org.Mm.eg.db")
>> preparing features information...		 2021-04-13 18:04:33 
>> identifying nearest features...		 2021-04-13 18:04:33 
>> calculating distance from peak to TSS...	 2021-04-13 18:04:33 
>> assigning genomic annotation...		 2021-04-13 18:04:33 
>> adding gene annotation...			 2021-04-13 18:04:36 
'select()' returned 1:many mapping between keys and columns
>> assigning chromosome lengths			 2021-04-13 18:04:36 
>> done...					 2021-04-13 18:04:36 
tabla2 <- as.data.frame(peakAnno)
write.csv(tabla2,"atacCONTRASanno2.csv")
> 
