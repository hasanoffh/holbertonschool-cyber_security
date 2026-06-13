#!/bin/bash
subfinder -d $1 -silent | while read -r sub; do echo $sub; ip=$(dig +short $sub | grep -E "^[0-9.]+$" | head -n1); if [ -n "$ip" ]; then echo "$sub,$ip" >&3; fi; done 3> $1.txt
