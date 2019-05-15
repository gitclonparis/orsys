
#!/bin/bash
# Variables globales et locales à l'intérieur d'une fonction.

fonc ()
{
  local var_local=23       # Déclaré en tant que variable locale.
  echo                     # Utilise la commande intégrée locale.
  echo "\"var_local\" dans la fonction = $var_local"
  var_global=999           # Non déclarée en local.
                           # Retour en global.
  echo "\"var_global\" dans la fonction = $var_global"
}

fonc22 ()
{
  echo "\"var_global\" dans la fonction = $var_global"
}
  

fonc

fonc22

# Maintenant, voyons s'il existe une variable locale en dehors de la fonction.

echo
echo "\"var_loc\" en dehors de la fonction = $var_local"
                                      # "var_loc" en dehors de la fonction = 
                                      # Non, $var_local n'est pas visible globalement.
echo "\"var_global\" en dehors de la fonction = $var_global"
                                      # "var_global" en dehors de la fontion = 999
                                      # $var_global est visible globalement.
echo                                  

exit 0
