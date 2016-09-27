cd ..
java -cp .:morph.jar:lib/* es.upm.fi.dia.oeg.morph.r2rml.rdb.engine.MorphRDBRunner karyote karyote.properties
cd karyote
sed -i -e 's/Procaryota/Prokaryota/g' karyote.nt
grep -Ev 'prokaryote (Euka|unidentified|resource:>|""\^\^' karyote.nt | sort -u > result.nt
mv result.nt karyote.nt
cat <<EOT >> karyote.nt
<http://bio2rdf.org/erop_vocabulary:source_karyote> <http://www.w3.org/1999/02/22-rdf-syntax-ns#type> <http://www.w3.org/1999/02/22-rdf-syntax-ns#Property> .
<http://bio2rdf.org/erop_vocabulary:source_karyote> <http://www.w3.org/1999/02/22-rdf-syntax-ns#type> <http://www.w3.org/2002/07/owl#ObjectProperty> .
<http://bio2rdf.org/erop_vocabulary:source_karyote> <http://www.w3.org/2000/01/rdf-schema#label> "Karyote"^^<http://www.w3.org/2001/XMLSchema#string> .
<http://bio2rdf.org/erop_vocabulary:source_karyote> <http://purl.org/dc/terms/description> "First source karyote"^^<http://www.w3.org/2001/XMLSchema#string> .
EOT
