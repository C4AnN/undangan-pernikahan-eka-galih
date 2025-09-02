# 🔧 PANDUAN GIT LOKAL UNTUK C4AnN

## 📋 PERSIAPAN GIT LOKAL

### 1️⃣ **Install Git di Windows**
1. Download Git: https://git-scm.com/download/win
2. Install dengan setting default
3. Buka **Command Prompt** atau **PowerShell** sebagai Administrator
4. Test installation: `git --version`

### 2️⃣ **Konfigurasi Git**
 Buka Command Prompt/PowerShell di folder `d:\Undangan Nikahan (Eka & Galih)`, lalu jalankan:

```bash
# Set username dan email (sesuaikan dengan akun GitHub Anda)
git config --global user.name "C4AnN"
git config --global user.email "email@anda.com"

# Set default branch name ke main
git config --global init.defaultBranch main
```

### 3️⃣ **Buat Repository di GitHub (Web)**
1. Masuk ke https://github.com/C4AnN
2. Klik **"New Repository"**
3. **Repository name:** `undangan-pernikahan-eka-galih`
4. **Description:** `Website Undangan Pernikahan Eka Zuliana Putri & Galih Kusuma Wardani - 02 Oktober 2025`
5. Pastikan **Public**
6. **JANGAN** centang "Add a README file" (kita akan push dari lokal)
7. Klik **"Create repository"**

## 🚀 LANGKAH-LANGKAH PUSH PERTAMA KALI

### 4️⃣ **Initialize Git di Folder Lokal**
 Buka Command Prompt/PowerShell di folder `d:\Undangan Nikahan (Eka & Galih)`:

```bash
# Masuk ke folder project
cd "d:\Undangan Nikahan (Eka & Galih)"

# Initialize git repository
git init

# Add remote repository (ganti dengan URL repository Anda)
git remote add origin https://github.com/C4AnN/undangan-pernikahan-eka-galih.git
```

### 5️⃣ **Add & Commit Semua File**
```bash
# Add semua file ke staging
git add .

# Commit pertama kali
git commit -m "Initial commit: Upload website undangan pernikahan"

# Push ke GitHub
git push -u origin main
```

**Note:** Anda akan diminta login GitHub. Masukkan username: `C4AnN` dan password: **Personal Access Token** (bukan password biasa).

### 6️⃣ **Buat Personal Access Token (PAT)**
Karena GitHub sudah tidak support password biasa, Anda perlu Personal Access Token:

1. Masuk ke GitHub.com
2. Klik profile picture → **Settings**
3. Scroll ke bawah → **Developer settings**
4. **Personal access tokens** → **Tokens (classic)**
5. **Generate new token (classic)**
6. **Note:** `Undangan Website Token`
7. **Expiration:** `No expiration`
8. **Scopes:** Centang `repo` (full repository access)
9. **Generate token**
10. **COPY TOKEN INI** dan simpan di tempat aman!

### 7️⃣ **Aktifkan GitHub Pages**
1. Masuk ke repository: https://github.com/C4AnN/undangan-pernikahan-eka-galih
2. **Settings** → **Pages**
3. **Source:** Deploy from a branch
4. **Branch:** main
5. **Folder:** / (root)
6. **Save**

## 🔄 WORKFLOW UPDATE WEBSITE

### **Cara Update Website dari Lokal:**

```bash
# 1. Masuk ke folder project
cd "d:\Undangan\undangan"

# 2. Edit file yang ingin diubah (misal: index.html)
# Gunakan text editor seperti VS Code, Notepad++, dll

# 3. Check perubahan
git status

# 4. Add perubahan
git add .

# 5. Commit dengan pesan yang jelas
git commit -m "Update: Ubah tanggal acara"

# 6. Push ke GitHub
git push origin main
```

**Website otomatis update dalam 1-2 menit setelah push!**

## 📝 CONTOH WORKFLOW HARIAN

### **Scenario 1: Update Info Acara**
```bash
cd "d:\Undangan\undangan"
# Edit index.html
git add index.html
git commit -m "Update: Ubah lokasi acara"
git push origin main
```

### **Scenario 2: Ganti Foto**
```bash
cd "d:\Undangan\undangan"
# Ganti file di assets/images/
git add assets/images/
git commit -m "Update: Ganti foto mempelai"
git push origin main
```

### **Scenario 3: Update Multiple Files**
```bash
cd "d:\Undangan\undangan"
# Edit beberapa file
git add .
git commit -m "Update: Perbaikan tampilan dan konten"
git push origin main
```

## 🛠️ PERINTAH GIT YANG BERGUNA

```bash
# Lihat status file
git status

# Lihat history commit
git log --oneline

# Lihat perubahan file
git diff

# Lihat remote repository
git remote -v

# Pull perubahan dari GitHub (jika ada yang edit dari web)
git pull origin main

# Lihat branch
git branch

# Reset ke commit sebelumnya (hati-hati!)
git reset --hard HEAD~1
```

## 🔧 SETUP EDITOR (Opsional)

### **VS Code (Recommended)**
1. Download: https://code.visualstudio.com/
2. Install Git extension
3. Buka folder project: File → Open Folder → `d:\Undangan\undangan`
4. Edit file langsung di VS Code
5. Use built-in Git interface

### **Notepad++ (Lightweight)**
1. Download: https://notepad-plus-plus.org/
2. Edit file, save
3. Use command line untuk git commands

## 📱 SETUP GIT DI SMARTPHONE (Opsional)

### **Termux (Android)**
```bash
pkg install git
git clone https://github.com/C4AnN/undangan-fernando-silvy.git
```

## 🆘 TROUBLESHOOTING

### **Error: Authentication failed**
- Pastikan menggunakan Personal Access Token, bukan password
- Token harus memiliki scope `repo`

### **Error: Permission denied**
```bash
# Set remote URL dengan token
git remote set-url origin https://C4AnN:YOUR_TOKEN@github.com/C4AnN/undangan-fernando-silvy.git
```

### **Error: Repository not found**
```bash
# Check remote URL
git remote -v
# Fix jika salah
git remote set-url origin https://github.com/C4AnN/undangan-fernando-silvy.git
```

### **Conflict saat push**
```bash
# Pull dulu, resolve conflict, lalu push
git pull origin main
# Edit file yang conflict
git add .
git commit -m "Resolve merge conflict"
git push origin main
```

## 📋 QUICK REFERENCE

### **Setup Sekali (First Time)**
```bash
git config --global user.name "C4AnN"
git config --global user.email "your-email@domain.com"
cd "d:\Undangan\undangan"
git init
git remote add origin https://github.com/C4AnN/undangan-fernando-silvy.git
git add .
git commit -m "Initial commit"
git push -u origin main
```

### **Update Harian**
```bash
cd "d:\Undangan\undangan"
# Edit files...
git add .
git commit -m "Update: describe your changes"
git push origin main
```

## 🎯 URL FINAL WEBSITE
```
https://c4ann.github.io/undangan-fernando-silvy
```

**Sekarang Anda bisa update website kapan saja dari komputer lokal! 🚀**

---
*Last updated: August 2025*
