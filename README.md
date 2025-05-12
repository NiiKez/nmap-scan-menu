# Nmap Scan Menu

An interactive Bash script for performing a variety of Nmap scans through a simple terminal menu, including fast scans, full port scans, version detection, and service-specific scans like FTP and SMB. Ideal for sysadmins, pentesters, and anyone doing recon work.

---

## 🚀 Features

- Menu-driven interface
- Supports common scan types:
  - Normal, Fast, Full, Stealth, Aggressive
  - OS and version detection
  - UDP scans
  - FTP and SMB script scans
- Custom scan option
- Color-coded output
- Supports `sudo` for privileged scans

---

## 🖥️ Usage on Linux

### 📦 Requirements

- Bash (default shell in most distros)
- [Nmap](https://nmap.org/) (Install via `sudo apt install nmap` or equivalent)

### 📥 Installation

Clone this repository:

```bash
git clone https://github.com/your-username/nmap-scan-menu.git
cd nmap-scan-menu
```

Make the script executable:

```bash
chmod +x nmap_menu.sh
```

Run the script:

```bash
./nmap_menu.sh
```


### 🧠 Tip

You can check available scripts with:

```bash
ls /usr/share/nmap/scripts/ftp*
ls /usr/share/nmap/scripts/smb*
```

