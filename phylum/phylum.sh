cd ..
java -cp .:morph.jar:lib/* es.upm.fi.dia.oeg.morph.r2rml.rdb.engine.MorphRDBRunner phylum phylum.properties
cd phylum
sed -i -e 's/rthropodan/rthropoda/g' phylum.nt
grep -Ev 'unidentified|resource:>|""\^\^' phylum.nt | sort -u > result.nt
mv result.nt phylum.nt
cat <<EOT >> phylum.nt
<http://bio2rdf.org/erop_vocabulary:source_phylum> <http://www.w3.org/1999/02/22-rdf-syntax-ns#type> <http://www.w3.org/2000/01/rdf-schema#Property> .
<http://bio2rdf.org/erop_vocabulary:source_phylum> <http://www.w3.org/2000/01/rdf-schema#label> "Phylum"^^<http://www.w3.org/2001/XMLSchema#string> .
<http://bio2rdf.org/erop_vocabulary:source_phylum> <http://purl.org/dc/terms/description> "First source phylum"^^<http://www.w3.org/2001/XMLSchema#string> .
EOT
