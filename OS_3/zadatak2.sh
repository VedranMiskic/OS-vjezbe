
#!/bin/bash

if [ "$#" -ne 1 ]; then
	echo "Mora biti jedan argument"
	exit 1
fi

i=1
niz=()

if [[ "$1" -ge 1 && "$1" -le 10 ]]; then
	while (( i <= "$1" )); do
		niz+=("$i")
		i=$((i+1))
	done
	echo "${niz[@]}" > brojevi.txt
else
	echo "Broj nije izmedu 1 i 10"
fi
