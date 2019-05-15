cat liste1 liste2 liste3 | sort | uniq > liste123 &
cat liste4 liste5 liste6 | sort | uniq > liste456 &
wait
diff liste123 liste456
