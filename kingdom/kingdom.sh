cd ..
java -cp .:morph.jar:lib/* es.upm.fi.dia.oeg.morph.r2rml.rdb.engine.MorphRDBRunner kingdom kingdom.properties
cd kingdom
sed -i -e 's/Plant>/Plantae>/g' kingdom.nt
grep -Ev 'unidentified|resource:>|""\^\^|Plant"\^\^' kingdom.nt | sort -u > result.nt
mv result.nt kingdom.nt
cat <<EOT >> kingdom.nt
<http://bio2rdf.org/erop_vocabulary:source_kingdom> <http://www.w3.org/1999/02/22-rdf-syntax-ns#type> <http://www.w3.org/1999/02/22-rdf-syntax-ns#Property> .
<http://bio2rdf.org/erop_vocabulary:source_kingdom> <http://www.w3.org/1999/02/22-rdf-syntax-ns#type> <http://www.w3.org/2002/07/owl#ObjectProperty> .
<http://bio2rdf.org/erop_vocabulary:source_kingdom> <http://www.w3.org/2000/01/rdf-schema#label> "Kingdom"^^<http://www.w3.org/2001/XMLSchema#string> .
<http://bio2rdf.org/erop_vocabulary:source_kingdom> <http://purl.org/dc/terms/description> "First source kingdom"^^<http://www.w3.org/2001/XMLSchema#string> .
EOT
