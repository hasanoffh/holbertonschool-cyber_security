#!/bin/bash
# Hədəf hash arqumentini götürürük və {xor} hissəsini təmizləyirik
CLEAN_HASH=$(echo "$1" | sed 's/{xor}//')

# Base64 kodunu açırıq və simvolları növbə ilə tutub 95 ilə XOR edirik
echo "$CLEAN_HASH" | base64 -d | xxd -p -c1 | while read -r hex
do
    if [ -n "$hex" ]
    then
        # Hex dəyəri onluq ədədə çeviririk
        dec=$((16#$hex))
        # 95 ilə XOR əməliyyatı icra edirik
        xor_dec=$((dec ^ 95))
        # Yenidən simvola çevirib çap edirik
        printf "\\$(printf '%03o' "$xor_dec")"
    fi
done
echo ""
