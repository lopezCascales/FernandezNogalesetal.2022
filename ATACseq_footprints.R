#!/bin/bash
#Made by MT Lopez-Cascales
#Made on 29/07/2022


#####################################################################

samtools merge contras_sort.bam ATAC_contra_1_mm10_sort_clean.bam ATAC_contra_2_mm10_sort_clean.bam ATAC_contra_3_mm10_sort_clean.bam
samtools merge ipsis_sort.bam ATAC_Ipsi_1_mm10_sort_clean.bam ATAC_Ipsi_2_mm10_sort_clean.bam ATAC_Ipsi_3_mm10_sort_clean.bam

#####################################################################

macs2 callpeak -t contras_sort.bam  -g mm -q 0.05 --broad -f BAM -n contras --outdir
macs2 callpeak -t ipsis_sort.bam  -g mm -q 0.05 --broad -f BAM -n contras --outdir

# homer Motif Analysis
findMotifsGenome.pl <peak/BED file> <genome> <output directory> -size # [options]
#####################################################################
# footprint 

rgt-hint footprinting --atac-seq --paired-end --organism=mm10 --output-location=./ --output-prefix=ipsis ./ipsis_sort.bam ./ipsis.bed
rgt-hint footprinting --atac-seq --paired-end --organism=mm10 --output-location=./ --output-prefix=ipsis ./contras_sort.bam ./contras.bed

#####################################################################
# One of the main applications of footprinting is to find TFs associated with a given cellular condition. 
# To do his, one must first find motifs that overlap with the predicted footprints. 
# the RGT suite also offers a tool to find motif-predicted binding sites (MPBS). 
# Run the following commands to do motif matching for footprints using default JASPAR motifs: 

mkdir MotifMatching 

Ipsis
rgt-motifanalysis matching --organism=mm10 --input-files ipsis.bed
# otuput: ootprints_ATAC_Ipsi_mpbs.bed


Contras
rgt-motifanalysis matching --organism=mm10 --input-files contras.bed
# otuput: ootprints_ATAC_Contra_mpbs.bed

#####################################################################
# We use HINT to generate average ATAC-seq profiles around the binding sites of specific TFs. This analysis allows us to inspect chromatin
# accesibility for each particular TF. In addition, by comparitng the excision profiles of different ATAC-seq libraries, we can obtain 
# information about binding changes in the two types of cells. 
# To visualize the differences in factor activity. The scatter plots are displayed in lineplots.

rgt-hint differential --organism=mm10--bc --nc 30 --mpbs-files=footprints_ATAC_Contra_mpbs.bed, footprints_ATAC_Ipsi_mpbs.bed 
  \--reads-files=contras_sort.bam, ipsis_sort.bam --conditions=CL,IL --output-location=CL_IL

#####################################################################

Circles plot 

breaks = c(-4,0,4)
pdf("circles.pdf")
ggplot(tabla, aes(x=cell, y= MOTIF)) + )
  geom_point(aes(size=X.log10.Pvalue., fill=LFCRNA), shape=21) + 
    scalle_fill_gradient2(low="#ec6568",mid="white", high="#49b5cd", na.value="white")
dev.off()

#####################################################################

Contour plot 

pdf("contourplot.pdf")
sss <- ggplot(ta,aes(x = foldchangeATAC, y = log2FoldChange)) 

  sss + scale_fill_continuous(low="white", high="grey20", guide="colorbar") +
  geom_smooth(method=lm,linetype=2,colour="black",se=F) + 
  guides(alpha="none") +
  geom_point(aes(colour = factor(DEGs)),size=0.8) +
  scale_color_manual(values=c("#FFA07A", "#98d7de")) +
 theme_bw() +
stat_density2d(aes(fill=..level..,alpha=..level..),geom='polygon',colour='black',  bins = 6) + commonTheme 

dev.off()

# correlation Pearson 
plotCorrelation -in scores_per_bin.npz --corMethosd Pearson --skipZeros --plotTittle "Pearson Correlation of Read Counts" 
--whatToPlot scatter --colorMap RdYlBu --plotNumers -o Pearsonreadcounts.pdf --outFileCorMatrix PearsonCorrelation.tab   

########################################################################

## Fisher exact test venny
> phyper(762,5620,18178,1868,lower.tail=FALSE) # contras
[1] 7.584169e-67
> phyper(1221,8635,14863,2100,lower.tail=FALSE) # ipsis
[1] 3.031583e-97
Footer
© 2022 GitHub, Inc.
Footer navigation
Terms
Privacy
Security
Status
