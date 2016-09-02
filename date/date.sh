echo "Warning: the date conversion returns errors. This probably means some date is in other format or is corrupted."
cd ..
java -cp .:morph.jar:lib/* es.upm.fi.dia.oeg.morph.r2rml.rdb.engine.MorphRDBRunner date date.properties 2> /dev/null
cd date
grep -Ev '0000-00-00|unidentified|resource:>|""\^\^' date.nt | sort -u > result.nt
mv result.nt date.nt
cat <<EOT >> date.nt
<http://bio2rdf.org/erop_vocabulary:creation_date> <http://www.w3.org/1999/02/22-rdf-syntax-ns#type> <http://www.w3.org/2000/01/rdf-schema#Property> .
<http://bio2rdf.org/erop_vocabulary:creation_date> <http://www.w3.org/2000/01/rdf-schema#label> "Creation date"^^<http://www.w3.org/2001/XMLSchema#string> .
<http://bio2rdf.org/erop_vocabulary:modification_date> <http://www.w3.org/1999/02/22-rdf-syntax-ns#type> <http://www.w3.org/2000/01/rdf-schema#Property> .
<http://bio2rdf.org/erop_vocabulary:modification_date> <http://www.w3.org/2000/01/rdf-schema#label> "Modification date"^^<http://www.w3.org/2001/XMLSchema#string> .
EOT
