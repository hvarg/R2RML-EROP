all: main.ttl
	java -cp .:morph.jar:lib/* es.upm.fi.dia.oeg.morph.r2rml.rdb.engine.MorphRDBRunner . main.properties
	grep -vE '""\^\^|pubmed:>|unidentified|"-"|"none"|resources:>|uniprot/>' main.nt > result.nt
	sort -u result.nt > erop.nt
	rm result.nt
