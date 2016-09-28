cd ..
java -cp .:morph.jar:lib/* es.upm.fi.dia.oeg.morph.r2rml.rdb.engine.MorphRDBRunner references references.properties
cd references
grep -Ev ':->|pubmed:>|uniprot/>|resource:>|""\^\^' references.nt | sort -u > result.nt
mv result.nt references.nt
cat <<EOT >> references.nt
<http://bio2rdf.org/erop_vocabulary:title> <http://www.w3.org/1999/02/22-rdf-syntax-ns#type> <http://www.w3.org/1999/02/22-rdf-syntax-ns#Property> .
<http://bio2rdf.org/erop_vocabulary:title> <http://www.w3.org/1999/02/22-rdf-syntax-ns#type> <http://www.w3.org/2002/07/owl#DatatypeProperty> .
<http://bio2rdf.org/erop_vocabulary:title> <http://www.w3.org/2000/01/rdf-schema#label> "Title"^^<http://www.w3.org/2001/XMLSchema#string> .
<http://bio2rdf.org/erop_vocabulary:title> <http://purl.org/dc/terms/description> "Reference title"^^<http://www.w3.org/2001/XMLSchema#string> .
<http://bio2rdf.org/erop_vocabulary:author> <http://www.w3.org/1999/02/22-rdf-syntax-ns#type> <http://www.w3.org/1999/02/22-rdf-syntax-ns#Property> .
<http://bio2rdf.org/erop_vocabulary:author> <http://www.w3.org/1999/02/22-rdf-syntax-ns#type> <http://www.w3.org/2002/07/owl#DatatypeProperty> .
<http://bio2rdf.org/erop_vocabulary:author> <http://www.w3.org/2000/01/rdf-schema#label> "Author"^^<http://www.w3.org/2001/XMLSchema#string> .
<http://bio2rdf.org/erop_vocabulary:author> <http://purl.org/dc/terms/description> "Reference author"^^<http://www.w3.org/2001/XMLSchema#string> .
<http://bio2rdf.org/erop_vocabulary:journal> <http://www.w3.org/1999/02/22-rdf-syntax-ns#type> <http://www.w3.org/1999/02/22-rdf-syntax-ns#Property> .
<http://bio2rdf.org/erop_vocabulary:journal> <http://www.w3.org/1999/02/22-rdf-syntax-ns#type> <http://www.w3.org/2002/07/owl#DatatypeProperty> .
<http://bio2rdf.org/erop_vocabulary:journal> <http://www.w3.org/2000/01/rdf-schema#label> "Journal"^^<http://www.w3.org/2001/XMLSchema#string> .
<http://bio2rdf.org/erop_vocabulary:journal> <http://purl.org/dc/terms/description> "Reference journal"^^<http://www.w3.org/2001/XMLSchema#string> .
<http://bio2rdf.org/erop_vocabulary:year> <http://www.w3.org/1999/02/22-rdf-syntax-ns#type> <http://www.w3.org/1999/02/22-rdf-syntax-ns#Property> .
<http://bio2rdf.org/erop_vocabulary:year> <http://www.w3.org/1999/02/22-rdf-syntax-ns#type> <http://www.w3.org/2002/07/owl#DatatypeProperty> .
<http://bio2rdf.org/erop_vocabulary:year> <http://www.w3.org/2000/01/rdf-schema#label> "Year"^^<http://www.w3.org/2001/XMLSchema#string> .
<http://bio2rdf.org/erop_vocabulary:year> <http://purl.org/dc/terms/description> "Reference year"^^<http://www.w3.org/2001/XMLSchema#string> .
<http://bio2rdf.org/erop_vocabulary:country> <http://www.w3.org/1999/02/22-rdf-syntax-ns#type> <http://www.w3.org/1999/02/22-rdf-syntax-ns#Property> .
<http://bio2rdf.org/erop_vocabulary:country> <http://www.w3.org/1999/02/22-rdf-syntax-ns#type> <http://www.w3.org/2002/07/owl#DatatypeProperty> .
<http://bio2rdf.org/erop_vocabulary:country> <http://www.w3.org/2000/01/rdf-schema#label> "Country"^^<http://www.w3.org/2001/XMLSchema#string> .
<http://bio2rdf.org/erop_vocabulary:country> <http://purl.org/dc/terms/description> "Reference country"^^<http://www.w3.org/2001/XMLSchema#string> .
<http://bio2rdf.org/erop_vocabulary:reference> <http://www.w3.org/1999/02/22-rdf-syntax-ns#type> <http://www.w3.org/2002/07/owl#ObjectProperty> .
<http://bio2rdf.org/erop_vocabulary:asd_reference> <http://www.w3.org/1999/02/22-rdf-syntax-ns#type> <http://www.w3.org/2002/07/owl#ObjectProperty> .
<http://bio2rdf.org/erop_vocabulary:nsd_reference> <http://www.w3.org/1999/02/22-rdf-syntax-ns#type> <http://www.w3.org/2002/07/owl#ObjectProperty> .
<http://bio2rdf.org/erop_vocabulary:reference> <http://www.w3.org/1999/02/22-rdf-syntax-ns#type> <http://www.w3.org/1999/02/22-rdf-syntax-ns#Property> .
<http://bio2rdf.org/erop_vocabulary:asd_reference> <http://www.w3.org/1999/02/22-rdf-syntax-ns#type> <http://www.w3.org/1999/02/22-rdf-syntax-ns#Property> .
<http://bio2rdf.org/erop_vocabulary:nsd_reference> <http://www.w3.org/1999/02/22-rdf-syntax-ns#type> <http://www.w3.org/1999/02/22-rdf-syntax-ns#Property> .
<http://bio2rdf.org/erop_vocabulary:asd_reference> <http://www.w3.org/2000/01/rdf-schema#label> "ASD Reference"^^<http://www.w3.org/2001/XMLSchema#string> .
<http://bio2rdf.org/erop_vocabulary:asd_reference> <http://purl.org/dc/terms/description> "First aminoacid sequence determination reference"^^<http://www.w3.org/2001/XMLSchema#string> .
<http://bio2rdf.org/erop_vocabulary:nsd_reference> <http://www.w3.org/2000/01/rdf-schema#label> "NSD Reference"^^<http://www.w3.org/2001/XMLSchema#string> .
<http://bio2rdf.org/erop_vocabulary:nsd_reference> <http://purl.org/dc/terms/description> "First nucleotide sequence determination reference"^^<http://www.w3.org/2001/XMLSchema#string> .
<http://bio2rdf.org/erop_vocabulary:nsd_reference> <http://www.w3.org/2000/01/rdf-schema#subPropertyOf> <http://bio2rdf.org/erop_vocabulary:reference> .
<http://bio2rdf.org/erop_vocabulary:asd_reference> <http://www.w3.org/2000/01/rdf-schema#subPropertyOf> <http://bio2rdf.org/erop_vocabulary:reference> .
<http://bio2rdf.org/erop_vocabulary:ASDReference> <http://www.w3.org/2000/01/rdf-schema#subClassOf> <http://bio2rdf.org/erop_vocabulary:InternalReference> .
<http://bio2rdf.org/erop_vocabulary:NSDReference> <http://www.w3.org/2000/01/rdf-schema#subClassOf> <http://bio2rdf.org/erop_vocabulary:InternalReference> .
<http://bio2rdf.org/erop_vocabulary:InternalReference> <http://www.w3.org/2000/01/rdf-schema#subClassOf> <http://bio2rdf.org/erop_vocabulary:Reference> .
EOT
