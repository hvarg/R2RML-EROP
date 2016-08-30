cd ..
java -cp .:morph.jar:lib/* es.upm.fi.dia.oeg.morph.r2rml.rdb.engine.MorphRDBRunner karyote karyote.properties
cd karyote
sed -i -e 's/Procaryota/Prokaryota/g' karyote.nt
grep -Ev 'unidentified|resource:>|""\^\^' karyote.nt > result.nt
sort -u result.nt > karyote.nt
rm result.nt
cat <<EOT >> karyote.nt
<http://bio2rdf.org/erop_vocabulary:karyote> <http://www.w3.org/1999/02/22-rdf-syntax-ns#type> <http://www.w3.org/2000/01/rdf-schema#Property> .
<http://bio2rdf.org/erop_vocabulary:karyote> <http://www.w3.org/2000/01/rdf-schema#label> "Karyote"^^<http://www.w3.org/2001/XMLSchema#string> .
EOT
