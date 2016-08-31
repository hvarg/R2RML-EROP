echo "Warning: the date conversion returns errors. This probably means some date is in other format or is corrupted."
cd ..
java -cp .:morph.jar:lib/* es.upm.fi.dia.oeg.morph.r2rml.rdb.engine.MorphRDBRunner date date.properties 2> /dev/null
cd date
grep -Ev '0000-00-00|unidentified|resource:>|""\^\^' date.nt | sort -u > result.nt
mv result.nt date.nt
