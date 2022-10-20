MEME	GRUPO	Enrichment	width	sites	Llr	Evalue	-log10(Evalue)
TGTKTKTYTGTG MEME-5	ipsis3UTR	1	12	45	405	5.80E-01	0.2365720064
CAKCTKCCCAG MEME-4	ipsis3UTR	2	11	45	422	3.50E-03	2.455931956
CCAYYTTCCCT MEME-5	contras3UTR	1	11	24	253	2.60E-03	2.585026652
CTKCTKYTCCTG MEME-3	ipsis3UTR	3	12	43	427	2.40E-04	3.619788758
TTYTGTTTYCT MEME-2	ipsis3UTR	4	11	45	432	7.30E-07	6.13667714
CCTGSCTCTGCT MEME-3	contras3UTR	3	12	23	264	1.30E-08	7.886056648
CCCCMSCYSCA MEME-2	contras3UTR	4	11	23	260	3.40E-09	8.468521083
RGGAGGGWDGGG MEME-4	contras3UTR	2	12	24	270	5.60E-10	9.251811973
TTTTTTTTTTTT MEME-1	contras3UTR	5	12	24	276	1.10E-10	9.958607315
TTKTTTTTTTTT MEME-1	ipsis3UTR	5	12	38	432	5.00E-18	17.30103


#MEME contras3UTR
#TTTTTTTTTTTT MEME-1	width =  12  sites =  24  llr = 276  E-value = 1.1e-010
#CCCCMSCYSCA MEME-2	width =  11  sites =  23  llr = 260  E-value = 3.4e-009
#CCTGSCTCTGCT MEME-3	width =  12  sites =  23  llr = 264  E-value = 1.3e-008
#RGGAGGGWDGGG MEME-4	width =  12  sites =  24  llr = 270  E-value = 5.6e-010
#CCAYYTTCCCT MEME-5	width =  11  sites =  24  llr = 253  E-value = 2.6e-003

#MEME ipsis3UTR
#TTKTTTTTTTTT MEME-1	width =  12  sites =  38  llr = 432  E-value = 5.0e-018
#TTYTGTTTYCT MEME-2	width =  11  sites =  45  llr = 432  E-value = 7.3e-007
#CTKCTKYTCCTG MEME-3	width =  12  sites =  43  llr = 427  E-value = 2.4e-004
#CAKCTKCCCAG MEME-4	width =  11  sites =  45  llr = 422  E-value = 3.5e-003
#TGTKTKTYTGTG MEME-5	width =  12  sites =  45  llr = 405  E-value = 5.8e-001
##

data <- read.csv("motifsCPE.csv", sep =",", header = TRUE, stringsAsFactors = FALSE)
library("ggplot2")
library(clusterProfiler)
head(data)

pdf("motifsCPE_prueba.pdf")
ggplot(data, aes(x=GRUPO, y=MEME, color= X.log10.Evalue.)) +
  geom_point(aes(size = Enrichment)) +
  #scale_x_discrete(limits=c("1")) +
  scale_size(breaks=c(1,2,3,4,5)) +
  scale_color_gradient(low="#fcbba1", high="#a50f15") +
  theme_classic() +
  theme(panel.border=element_rect(fill='transparent', color='black', size=1),
        plot.title = element_text(color="black", size=14, hjust=0.5, face="bold", lineheight=1),
        axis.title.x = element_blank(),
        axis.title.y = element_text(color="black", size=12, face="bold"),
        axis.text.x = element_blank(),
        axis.ticks = element_blank(),
        axis.text.y = element_text(size=12,color="black",face="bold"),
        legend.text = element_text(color="black", size=10)) +
  labs(y="Motifs",size="Enrichment", color="-Log10(Evalue)",title="Motifs enrichment CPE",face="bold")
dev.off()
