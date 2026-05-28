#!/bin/bash
openssl passwd -6 -salt $(openssl rand -base64 16 | cut -c1-16) "$1" | openssl dgst -sha512 > 3_hash.txt
