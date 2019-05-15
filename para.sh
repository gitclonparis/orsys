if [ "$MON_PID" != "$PPID" ]; then
	export MON_PID=$$
	echo "PERE : mon PID est $$"
	echo "PERE : je lance un fils"
	$0 &
	sleep 1
	echo "PERE : le PID de mon fils est $!"
	echo "PERE : Je me termine"
else
	echo "FILS : mon PID EST $$, SELUI DE MON PERE EST $PPID"
	sleep 1
	echo "FILS : je me termin"
fi
