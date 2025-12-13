# Beginner-Linux-System-Utility-Toolkit (Bash)
A beginner Bash project that provides a mini Linux system administration toolkit using Bash functions, menus, and logging.

This project was built to practice **Bash scripting**, **functions**, and **basic automation**.

---

## 🚀 Features

- 📊 **System Information**
  - Shows current user
  - Hostname
  - System uptime
  - Kernel version

- 💾 **Disk Usage Check**
  - Displays disk space usage of root filesystem

- 🗜️ **Directory Backup**
  - Compresses a chosen directory into `.tar.gz`
  - Saves backups in `~/backups`

- 📝 **Logging**
  - Records every action in `/tmp/system_toolkit.log`

- 📋 **Interactive Menu**
  - Simple and beginner-friendly interface

---

## 🛠️ Technologies Used

- Bash scripting
- Linux system commands (`df`, `tar`, `date`, `uptime`)
- Shell functions
- Conditional statements
- Loops & case statements

---

## ▶️ How to Run

```bash
chmod +x system_toolkit.sh
./system_toolkit.sh
