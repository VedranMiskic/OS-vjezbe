
#!/bin/bash

if [[ "$#" -ne 1 ]]; then
	echo "Greska, mora biti tocno 1 argument"
	exit 1
fi

dir="$1"

if [[ ! -d "$dir" ]]; then
	echo "Greska, nije datoteka"
	exit 1
elif [[ ! -d "$dir/.git" ]]; then
	echo "Greska, datoteka nema .git repo"
fi

cd "$dir" || exit 1

echo "Informacije o repozitoriju" > repozitorij_info.txt

git add repozitorij_info.txt

git commit -m "Dodatana datoteka repozitorij_info.txt"

git log --oneline
