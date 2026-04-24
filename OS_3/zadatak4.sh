
#!/bin/bash

if [ "$#" -ne 1 ] || [ "$1" != "Zadatak4" ]; then
	echo "Mora biti jedan argument i mora se zvati isto kao i ovaj direktorij"
	exit 1
fi

dir="$1"

if [[ ! -d "$dir" ]]; then
	echo "Datoteka ne postoji"
	exit 1
fi

zip -r svi_zapisi.zip "$dir"

