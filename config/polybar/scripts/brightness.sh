#! /bin/bash
brgt="$(ddcutil --bus=4 getvcp 10 --brief | cut -d' ' -f 4)"
if [[ $brgt =~ [^a-z] ]]; then
    export BRGT="$brgt"
    echo $brgt
fi
# nospaces=${variable## } # remove leading spaces
# nospaces=${variable%% } # remove trailing spaces
