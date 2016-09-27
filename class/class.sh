cd ..
java -cp .:morph.jar:lib/* es.upm.fi.dia.oeg.morph.r2rml.rdb.engine.MorphRDBRunner class class.properties
cd class
sed -i -e 's/%20Gram/Gram/g' class.nt
sed -i -e 's/tivebacte/tive bacte/g' class.nt
grep -Ev 'ibsect|)insect|insrct|unidentified|resource:>|""\^\^' class.nt | sort -u > result.nt
mv result.nt class.nt
cat <<EOT >> class.nt
<http://bio2rdf.org/erop_vocabulary:source_class> <http://www.w3.org/1999/02/22-rdf-syntax-ns#type> <http://www.w3.org/1999/02/22-rdf-syntax-ns#Property> .
<http://bio2rdf.org/erop_vocabulary:source_class> <http://www.w3.org/1999/02/22-rdf-syntax-ns#type> <http://www.w3.org/2002/07/owl#ObjectProperty> .
<http://bio2rdf.org/erop_vocabulary:source_class> <http://www.w3.org/2000/01/rdf-schema#label> "Class"^^<http://www.w3.org/2001/XMLSchema#string> .
<http://bio2rdf.org/erop_vocabulary:source_class> <http://purl.org/dc/terms/description> "First source class"^^<http://www.w3.org/2001/XMLSchema#string> .
EOT
