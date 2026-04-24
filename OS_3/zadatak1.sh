
#!/bin/bash


if [[ "$#" -ne 2 ]]; then
	echo "Potrebno je unjeti 2 arguemnta"
	exit 1
elif [[ "$1" == $(pwd) && "$2" == *.sh ]]; then
	echo "$1 "
fi

radni_dir=$(pwd)

for ekstenzija in "$radni_dir"/*${2}; do
	if [ -f "$ekstenzija" ]; then
		echo "$(basename "$ekstenzija")"
	else
		echo "Nema takvih datoteka"
	fi
done
