.PHONY : main class date function karyote kingdom phylum references split clean

all: main class date function karyote kingdom phylum references split
	cat class/class.nt date/date.nt function/function.nt karyote/karyote.nt kingdom/kingdom.nt phylum/phylum.nt references/references.nt split/split.nt main.nt > erop.nt

main: main.ttl
	java -cp .:morph.jar:lib/* es.upm.fi.dia.oeg.morph.r2rml.rdb.engine.MorphRDBRunner . main.properties
	grep -vE '""\^\^|pubmed:>|unidentified|"-"|"none"|resources:>|uniprot/>' main.nt | sort -u > result.nt
	mv result.nt main.nt

class: class/class.ttl
	cd class && ./class.sh

date: date/date.ttl
	cd date && ./date.sh

function: function/function.ttl
	cd function && ./function.sh

karyote: karyote/karyote.ttl
	cd karyote && ./karyote.sh

kingdom: kingdom/kingdom.ttl
	cd kingdom && ./kingdom.sh

phylum: phylum/phylum.ttl
	cd phylum && ./phylum.sh

references: references/references.ttl
	cd references && ./references.sh

split: split/split.ttl
	cd split && ./split.sh

clean:
	rm -f class/class.nt date/date.nt function/function.nt karyote/karyote.nt kingdom/kingdom.nt phylum/phylum.nt references/references.nt split/split.nt

clean-all: clean
	rm -f erop.nt
