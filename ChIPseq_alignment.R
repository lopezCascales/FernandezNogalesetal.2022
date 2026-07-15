
#!/bin/bash
#Made by MT Lopez-Cascales
#Made on 27/07/2022

#Neuroserver user
ssh lab_eh_1@10.128.4.23 -p 22222
passwd: mtlc333_ping

# Annotation GTFfile:  Mus_musculus.GRCm38.83.gtf
# Genome: Mus_musculus.GRCm38.dna.primary_assembly.fa

# Bowtie2 index

bowtie2-build Mus_musculus.GRCm38.dna.primary_assembly.fa.fa Mus_musculus_index_bowtie2

# Mus_musculus_index_bowtie2.1.bt2              100%  847MB  72.5MB/s   00:11    
# Mus_musculus_index_bowtie2.2.bt2              100%  632MB  70.3MB/s   00:09    
# Mus_musculus_index_bowtie2.3.bt2              100% 6119     4.1MB/s   00:00    
# Mus_musculus_index_bowtie2.4.bt2              100%  632MB  70.3MB/s   00:08    
# Mus_musculus_index_bowtie2.rev.1.bt2          100%  847MB  72.1MB/s   00:11    
# Mus_musculus_index_bowtie2.rev.2.bt2          100%  632MB  68.5MB/s   00:09  


# chipseq bowtie2
for file in ./03*.fastq; 
do bowtie2 -x Mus_musculus_index_bowtie2 -U ${file} -S ${file/.fastq/.sam}; 
done

# Above 60-70% uniquely mapped reads is normal, whereas less than 50% may be cause for concern. A low percentade of uniquely mapped reads often is due either to excessive amplification in the PCR step, inadequeate read length, or problems with the sequencing platform, but with some ChIPed proteins it may be unavoidable (e.g. if the protein binds frequently in repetitive DNA)


####################################

