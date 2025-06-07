<h1 align="center">🔓 MAC Winbox Brute Force Tool</h1>
<p align="center">
  Brute force tool for MikroTik routers using MAC-Winbox protocol (layer 2).<br>
  <b>For authorized testing and educational purposes only.</b>
</p>

<p align="center">
  <img src="https://img.shields.io/badge/bash-brute--force-blue?logo=gnu-bash&style=flat-square">
  <img src="https://img.shields.io/badge/status-stable-success?style=flat-square">
  <img src="https://img.shields.io/badge/license-MIT-green?style=flat-square">
</p>

---

## 🧩 Features

- Brute force MikroTik via **MAC address**, not IP.
- Clean output with progress and results.
- Wordlist-based brute force (username & password).

---

## ⚙️ Requirements

- Linux (Debian/Kali/Ubuntu recommended)

---

## 🚀 Usage

```bash
./brmbox <MAC_ADDRESS>
```

Example:

```bash
./brmbox 4C:5E:0C:AA:BB:CC
```

Sample Output:

```
[*] Starting MAC brute-force on 4C:5E:0C:AA:BB:CC...
[*] Trying...
[+] SUCCESS! Username: admin | Password: 1234
```

---

## 📂 Wordlists

You need two files in the same directory:

* `user.txt` — list of usernames
* `pass.txt` — list of passwords

Example content:

**user.txt**

```
admin
user
test
```

**pass.txt**

```
admin
1234
password
```

---

## 🛑 Disclaimer

This tool is for:

* Ethical hacking & red team simulation
* Penetration testing with proper authorization
* Educational use only

⚠️ Never use this tool on unauthorized networks or devices. The author takes no responsibility for misuse.

---

## 📄 License

This project is licensed under the MIT License — see the [LICENSE](LICENSE) file for details.
