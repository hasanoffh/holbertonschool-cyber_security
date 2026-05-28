#!/bin/bash
john --wordlist=/usr/share/wordlists/rockyou.txt "$1" | tee >(john --show "$1" | cut -d: -f2 | head -n -1 > 4-password.txt)
