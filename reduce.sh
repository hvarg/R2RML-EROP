grep -vE '""\^\^|pubmed:>|unidentified|"-"|"none"|resources:>|uniprot/>' result.nt | sort -u > erop.nt
