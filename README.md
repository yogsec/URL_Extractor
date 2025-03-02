# 🌐 URL Extractor | Designed By YogSec

**URL Extractor | Designed By YogSec** is a **powerful Bash script** that helps you extract URLs from a **single file** or **all files inside a folder** — with support for **concurrent processing**.  
💾 It can **save extracted URLs** to a file and also display them in the terminal, making it perfect for **bug hunters**, **security researchers**, and **developers**.

![Screenshot](https://github.com/yogsec/URL_Extractor/blob/main/redacted-image.png)

---

## ✨ Features

✅ Extract URLs from **any file type** (html, js, css, json, xml, py, etc.)  
✅ Supports both **single file** and **folder mode**  
✅ **Concurrency** for faster processing in folder mode  
✅ Option to **save extracted URLs** to a file  
✅ Beautiful **header display** for every run  
✅ Handy **help (-h)** and **version (-v)** options  
✅ Developed by [YogSec](https://yogsec.com) — Built for **security researchers**  

---

## ⚙️ Installation

Clone this repository:

```bash
git clone https://github.com/YogSec/url-extractor.git
cd url-extractor
chmod +x url_extractor.sh
```

---

## 📝 Usage

```bash
./url_extractor.sh [options]
```

### Options

| Option            | Description                                         |
|------------------|--------------------------------------------------|
| `-u <file>`       | Extract URLs from a **single file** |
| `-l <folder>`    | Extract URLs from **all files in a folder** |
| `-s <file>`      | **Save** extracted URLs to a specified file |
| `-v`                  | Show tool **version** |
| `-h`                  | Show **help message** |

---

## 🔥 Examples

### Extract URLs from a single file and show in terminal

```bash
./url_extractor.sh -u sample.html
```

---

### Extract URLs from a folder (concurrent) and save to file

```bash
./url_extractor.sh -l /path/to/folder -s extracted_urls.txt
```

---

### Show Version

```bash
./url_extractor.sh -v
```

---

### Show Help

```bash
./url_extractor.sh -h
```

---

## 📊 Demo Output

```bash
#======================================================
#            URL Extractor | Designed By YogSec
#======================================================

Extracting URLs from sample.html
https://example.com
https://yogsec.com/contact
https://cdn.example.net/assets.js
```

---



## ⚡ Why YogSec Tools?

🔐 **Security-Focused** — Built with **bug bounty hunters** in mind.  
🚀 **Speed** — Uses concurrency for faster folder processing.  
🔗 **Flexibility** — Works with almost **any file type** that might contain URLs.  

---

## 🌟 Let's Connect!

Hello, Hacker! 👋 We'd love to stay connected with you. Reach out to us on any of these platforms and let's build something amazing together:

🌐 **Website:** [https://yogsec.github.io/yogsec/](https://yogsec.github.io/yogsec/)  
📜 **Linktree:** [https://linktr.ee/yogsec](https://linktr.ee/yogsec)  
🔗 **GitHub:** [https://github.com/yogsec](https://github.com/yogsec)  
💼 **LinkedIn (Company):** [https://www.linkedin.com/company/yogsec/](https://www.linkedin.com/company/yogsec/)  
📷 **Instagram:** [https://www.instagram.com/yogsec.io/](https://www.instagram.com/yogsec.io/)  
🐦 **Twitter (X):** [https://x.com/yogsec](https://x.com/yogsec)  
👨‍💼 **Personal LinkedIn:** [https://www.linkedin.com/in/cybersecurity-pentester/](https://www.linkedin.com/in/cybersecurity-pentester/)  
📧 **Email:** abhinavsingwal@gmail.com

## ☕ Buy Me a Coffee

If you find our work helpful and would like to support us, consider buying us a coffee. Your support keeps us motivated and helps us create more awesome content. ❤️

☕ **Support Us Here:** [https://buymeacoffee.com/yogsec](https://buymeacoffee.com/yogsec)
