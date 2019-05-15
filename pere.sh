echo "PID du programe principal : $$"
for fichier in "$@"; do
	./fis.sh $fichier
	echo "-----------"
	echo "Retour : $?"
done
echo "-----FIN----------"
