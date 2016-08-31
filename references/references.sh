cd ..
java -cp .:morph.jar:lib/* es.upm.fi.dia.oeg.morph.r2rml.rdb.engine.MorphRDBRunner references references.properties
cd references
grep -Ev 'resource:>|""\^\^' references.nt | sort -u > result.nt
mv result.nt references.nt
cat <<EOT >> references.nt
<http://bio2rdf.org/erop_vocabulary:asd_reference> <http://www.w3.org/1999/02/22-rdf-syntax-ns#type> <http://www.w3.org/2000/01/rdf-schema#Property> .
<http://bio2rdf.org/erop_vocabulary:asd_reference> <http://www.w3.org/2000/01/rdf-schema#label> "Reference"^^<http://www.w3.org/2001/XMLSchema#string> .
<http://bio2rdf.org/erop_vocabulary:asd_reference> <http://purl.org/dc/terms/description> "First aminoacid sequence determination reference"^^<http://www.w3.org/2001/XMLSchema#string> .
<http://bio2rdf.org/erop_vocabulary:title> <http://www.w3.org/1999/02/22-rdf-syntax-ns#type> <http://www.w3.org/2000/01/rdf-schema#Property> .
<http://bio2rdf.org/erop_vocabulary:title> <http://www.w3.org/2000/01/rdf-schema#label> "Title"^^<http://www.w3.org/2001/XMLSchema#string> .
<http://bio2rdf.org/erop_vocabulary:title> <http://purl.org/dc/terms/description> "Reference title"^^<http://www.w3.org/2001/XMLSchema#string> .
<http://bio2rdf.org/erop_vocabulary:author> <http://www.w3.org/1999/02/22-rdf-syntax-ns#type> <http://www.w3.org/2000/01/rdf-schema#Property> .
<http://bio2rdf.org/erop_vocabulary:author> <http://www.w3.org/2000/01/rdf-schema#label> "Author"^^<http://www.w3.org/2001/XMLSchema#string> .
<http://bio2rdf.org/erop_vocabulary:author> <http://purl.org/dc/terms/description> "Reference author"^^<http://www.w3.org/2001/XMLSchema#string> .
<http://bio2rdf.org/erop_vocabulary:journal> <http://www.w3.org/1999/02/22-rdf-syntax-ns#type> <http://www.w3.org/2000/01/rdf-schema#Property> .
<http://bio2rdf.org/erop_vocabulary:journal> <http://www.w3.org/2000/01/rdf-schema#label> "Journal"^^<http://www.w3.org/2001/XMLSchema#string> .
<http://bio2rdf.org/erop_vocabulary:journal> <http://purl.org/dc/terms/description> "Reference journal"^^<http://www.w3.org/2001/XMLSchema#string> .
<http://bio2rdf.org/erop_vocabulary:year> <http://www.w3.org/1999/02/22-rdf-syntax-ns#type> <http://www.w3.org/2000/01/rdf-schema#Property> .
<http://bio2rdf.org/erop_vocabulary:year> <http://www.w3.org/2000/01/rdf-schema#label> "Year"^^<http://www.w3.org/2001/XMLSchema#string> .
<http://bio2rdf.org/erop_vocabulary:year> <http://purl.org/dc/terms/description> "Reference year"^^<http://www.w3.org/2001/XMLSchema#string> .
<http://bio2rdf.org/erop_vocabulary:country> <http://www.w3.org/1999/02/22-rdf-syntax-ns#type> <http://www.w3.org/2000/01/rdf-schema#Property> .
<http://bio2rdf.org/erop_vocabulary:country> <http://www.w3.org/2000/01/rdf-schema#label> "Country"^^<http://www.w3.org/2001/XMLSchema#string> .
<http://bio2rdf.org/erop_vocabulary:country> <http://purl.org/dc/terms/description> "Reference country"^^<http://www.w3.org/2001/XMLSchema#string> .
<http://bio2rdf.org/erop_resource:FASDReference> <http://www.w3.org/2000/01/rdf-schema#label> "FASD Reference"^^<http://www.w3.org/2001/XMLSchema#string> .
<http://bio2rdf.org/erop_resource:FASDReference> <http://purl.org/dc/terms/description> "Frist aminoacid sequence determination reference"^^<http://www.w3.org/2001/XMLSchema#string> .
<http://bio2rdf.org/erop_resource:FNSDReference> <http://www.w3.org/2000/01/rdf-schema#label> "FAND Reference"^^<http://www.w3.org/2001/XMLSchema#string> .
<http://bio2rdf.org/erop_resource:FNSDReference> <http://purl.org/dc/terms/description> "Frist nucleotide sequence determination reference"^^<http://www.w3.org/2001/XMLSchema#string> .
EOT
