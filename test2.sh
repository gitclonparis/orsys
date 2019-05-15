var1=$(cat entree1.txt)
var2=$(cat entree2.txt)
var3=$(cat entree3.txt)

# var1=`<entree1.txt`

echo $var1
echo "Variable 2 = $var2"
echo 'Variable 2 = $var2'
echo "Variable 3 ="$var3

echo "Calcul de (var1*var2)+var diriger dans le fichier resultat.txt"

echo "Resultat du calcul :" >resultat.txt

expr \( $var1 \* $var2 \) + $var3 >>resultat.txt

let var4=\($var1*$var2\)+$var3
echo $var4 >>resultat2.txt
