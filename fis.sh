echo "PID  du fils est : $$"
fichier="$1"
if [ -f $fichier ]; then
	echo "le fichier exist"
	nligne=$(wc -l <$fichier)
	echo "le fichier posede $nligne  lignes"
	
	i=0
	for line in $(cat $fichier); do
		echo "ligne $i : $line"
		let i=$i+1
	done
	exit 0
else
	echo "absent"
	exit 1
fi

