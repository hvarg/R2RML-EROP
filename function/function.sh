cd ..
java -cp .:morph.jar:lib/* es.upm.fi.dia.oeg.morph.r2rml.rdb.engine.MorphRDBRunner function function.properties
cd function
grep -Ev 'unknown|unidentified|resource:>|""\^\^' function.nt | sort -u > result.nt
mv result.nt function.nt
cat <<EOT >> function.nt
<http://bio2rdf.org/erop_vocabulary:function_class> <http://www.w3.org/1999/02/22-rdf-syntax-ns#type> <http://www.w3.org/1999/02/22-rdf-syntax-ns#Property> .
<http://bio2rdf.org/erop_vocabulary:function_class> <http://www.w3.org/1999/02/22-rdf-syntax-ns#type> <http://www.w3.org/2002/07/owl#ObjectProperty> .
<http://bio2rdf.org/erop_vocabulary:function_class> <http://www.w3.org/2000/01/rdf-schema#label> "Function Class"^^<http://www.w3.org/2001/XMLSchema#string> .
<http://bio2rdf.org/erop_vocabulary:function_class> <http://purl.org/dc/terms/description> "First function determination class"^^<http://www.w3.org/2001/XMLSchema#string> .
EOT
