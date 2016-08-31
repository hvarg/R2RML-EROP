cd ..
java -cp .:morph.jar:lib/* es.upm.fi.dia.oeg.morph.r2rml.rdb.engine.MorphRDBRunner split split.properties
cd split
grep -Ev 'none|unidentified|resource:>|""\^\^' split.nt | sort -u > result.nt
mv result.nt split.nt
cat <<EOT >> split.nt
<http://bio2rdf.org/erop_vocabulary:synonym> <http://www.w3.org/1999/02/22-rdf-syntax-ns#type> <http://www.w3.org/2000/01/rdf-schema#Property> .
<http://bio2rdf.org/erop_vocabulary:synonym> <http://www.w3.org/2000/01/rdf-schema#label> "Synonym"^^<http://www.w3.org/2001/XMLSchema#string> .
<http://bio2rdf.org/erop_vocabulary:source_secreted> <http://www.w3.org/1999/02/22-rdf-syntax-ns#type> <http://www.w3.org/2000/01/rdf-schema#Property> .
<http://bio2rdf.org/erop_vocabulary:source_secreted> <http://www.w3.org/2000/01/rdf-schema#label> "Secreted by"^^<http://www.w3.org/2001/XMLSchema#string> .
<http://bio2rdf.org/erop_vocabulary:source_secreted> <http://purl.org/dc/terms/description> "Tissue/organ/cell/secreted"^^<http://www.w3.org/2001/XMLSchema#string> .
<http://bio2rdf.org/erop_vocabulary:source_organism> <http://www.w3.org/1999/02/22-rdf-syntax-ns#type> <http://www.w3.org/2000/01/rdf-schema#Property> .
<http://bio2rdf.org/erop_vocabulary:source_organism> <http://www.w3.org/2000/01/rdf-schema#label> "Organism"^^<http://www.w3.org/2001/XMLSchema#string> .
<http://bio2rdf.org/erop_vocabulary:source_organism> <http://purl.org/dc/terms/description> "All organism sources"^^<http://www.w3.org/2001/XMLSchema#string> .
EOT
