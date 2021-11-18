#! /bin/bash
cd ~/mydatalocal/tpngsscarabi_lena/

# on récupère le transcriptome d'arabidopsis et on le met dans le fichier data
# le document .fa contient la séquence 
# le document .gtf contient toute l'information générale 

wget -O data/arabidopsis_transcriptome.fa "https://ics.hutton.ac.uk/atRTD/RTD2/AtRTD2_19April2016.fa"
wget -O data/arabidopsis_transcriptome.gtf "https://ics.hutton.ac.uk/atRTD/RTD2/AtRTD2_19April2016.gtf"

salmon index -t data/arabidopsis_transcriptome.fa -p 8 -k 31 -i data_processed/