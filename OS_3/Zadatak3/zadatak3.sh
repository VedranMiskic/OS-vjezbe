
#!/bin/bash

brojac=1

radni_dir="screenshots"

echo "Preimenovane datoteke: "
for i in "$radni_dir"/*; do
	ime_datoteke=$(basename "$i")
	n="$radni_dir/screenshot_${brojac}_${ime_datoteke}"
	mv "$i" "$n"
	echo "$(basename "$n")"
	brojac=$((brojac+1))
done

