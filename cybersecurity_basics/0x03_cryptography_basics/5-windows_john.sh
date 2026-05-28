#!/bin/bash
john --wordlist=/usr/share/wordlists/rockyou.txt --format=nt "$1" | tee >(john --show --format=nt "$1" | cut -d: -f2 | head -n -1 > 5-password.txt)
