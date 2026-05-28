#!/bin/bash
john --wordlist=/usr/share/wordlists/rockyou.txt --format=Raw-SHA256 "$1" | tee >(john --show --format=Raw-SHA256 "$1" | cut -d: -f2 | head -n -1 > 6-password.txt)
