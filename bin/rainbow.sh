for i in {1..65535};do printf "%x\n" $i;done|while read -r u;do printf "\033[38;5;$((16+$((16#$u))%230))m\u$u\033[0m";done #Unicode rainbow
