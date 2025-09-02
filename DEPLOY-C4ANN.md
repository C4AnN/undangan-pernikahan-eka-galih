# 🚀 PANDUAN HOSTING KHUSUS UNTUK C4AnN

## 📋 INFORMASI AKUN
- **GitHub Username:** C4AnN
- **Profile:** https://github.com/C4AnN
- **Website akan tersedia di:** `https://c4ann.github.io/undangan-fernando-silvy`

## 🛠️ LANGKAH-LANGKAH DEPLOY

### 1️⃣ **Buat Repository Baru**
1. Masuk ke https://github.com/C4AnN
2. Klik tombol hijau **"New"** (atau **"+"** → New repository)
3. **Repository name:** `undangan-fernando-silvy`
4. **Description:** `Website Undangan Pernikahan Fernando & Silvy - 19 Agustus 2026`
5. Pastikan **Public** (bukan Private)
6. ✅ Centang **"Add a README file"**
7. Klik **"Create repository"**

### 2️⃣ **Upload File Website**
Ada 3 cara upload:

#### **Cara A: Git Lokal (Recommended - untuk update mudah)**
1. Install Git: https://git-scm.com/download/win
2. Double-click file `setup-git.bat` di folder ini
3. Ikuti instruksi untuk setup
4. Untuk update selanjutnya: double-click `push-website.bat`

#### **Cara B: Drag & Drop (Mudah)**
1. Buka repository yang baru dibuat: `https://github.com/C4AnN/undangan-fernando-silvy`
2. Klik **"uploading an existing file"**
3. Drag semua file dari folder `d:\Undangan\undangan` ke browser
4. **Commit message:** `Upload website undangan pernikahan`
5. Klik **"Commit changes"**

#### **Cara C: Upload Manual**
1. Klik **"Add file"** → **"Upload files"**
2. Select files dari folder `d:\Undangan\undangan`
3. Upload semua file kecuali folder `.git`
4. Commit changes

### 3️⃣ **Aktifkan GitHub Pages**
1. Di repository, klik tab **"Settings"**
2. Scroll down ke bagian **"Pages"** di sidebar kiri
3. **Source:** Pilih **"Deploy from a branch"**
4. **Branch:** Pilih **"main"**
5. **Folder:** Pilih **"/ (root)"**
6. Klik **"Save"**

### 4️⃣ **Tunggu Deploy**
- GitHub akan proses 2-5 menit
- Refresh halaman Settings → Pages
- Akan muncul: ✅ **"Your site is published at https://c4ann.github.io/undangan-fernando-silvy"**

## 🎯 URL WEBSITE ANDA

Website akan tersedia di:
```
https://c4ann.github.io/undangan-pernikahan-eka-galih
```

## 📱 URL PENDEK (Opsional)

Setelah online, buat URL pendek untuk dibagikan:
- **Bit.ly:** https://bit.ly/undangan-eka-galih
- **TinyURL:** https://tinyurl.com/eka-galih-2025
- **S.id:** https://s.id/undangan-eka-galih

## 🔄 CARA UPDATE WEBSITE

### **Update via Git Lokal (Recommended):**
1. Edit file yang ingin diubah (misal: index.html)
2. Double-click file `push-website.bat`
3. Masukkan pesan commit
4. Website otomatis update dalam 1-2 menit!

### **Update via GitHub Web:**
1. Masuk ke https://github.com/C4AnN/undangan-pernikahan-eka-galih
2. Klik file yang ingin diedit (misal: index.html)
3. Klik icon pensil untuk edit
4. Edit content, scroll ke bawah
5. **Commit message:** jelaskan perubahan
6. Klik **"Commit changes"**
7. Website update otomatis

### **Command Line Manual (Advanced):**
```bash
cd "d:\Undangan\undangan"
# Edit files...
git add .
git commit -m "Update: describe your changes"  
git push origin main
```

## 🛠️ FILE HELPER YANG TERSEDIA

Di folder project Anda sudah ada file helper:
- **`setup-git.bat`** - Setup Git pertama kali (jalankan sekali)
- **`push-website.bat`** - Update website dengan mudah (jalankan setiap update)
- **`GIT-LOCAL-GUIDE.md`** - Panduan lengkap Git lokal

Jika ingin edit website nanti:
1. Edit file di GitHub langsung (klik pencil icon)
2. Atau upload file baru (akan replace otomatis)
3. Commit changes
4. Website otomatis update dalam 1-2 menit

## 📤 CARA BERBAGI

Setelah website online, bagikan dengan:

### **Link Langsung:**
```
https://c4ann.github.io/undangan-fernando-silvy
```

### **Link dengan Nama Tamu:**
```
https://c4ann.github.io/undangan-fernando-silvy?to=Nama%20Tamu
```
*Contoh:*
- `?to=Bapak%20Surono` → akan tampil "Kepada Yth Bapak Surono"
- `?to=Keluarga%20Besar%20Pak%20Joko` → akan tampil "Kepada Yth Keluarga Besar Pak Joko"

### **Template WhatsApp:**
```
🤵👰 *Undangan Pernikahan* 👰🤵

Assalamu'alaikum Wr. Wb.

Tanpa mengurangi rasa hormat, kami mengundang 
Bapak/Ibu/Saudara/i untuk menghadiri pernikahan:

*Fernando Candra Yulianto, S.Kom*
&
*Silvy Rohmania Dewi, S.Pd*

📅 Rabu, 19 Agustus 2026
🕐 Pukul 08.00 WIB
📍 Loram Kulon, Kudus, Jawa Tengah

Untuk info lengkap, silakan kunjungi:
🔗 https://c4ann.github.io/undangan-fernando-silvy?to=Nama%20Tamu

Merupakan kehormatan bagi kami jika 
Bapak/Ibu/Saudara/i berkenan hadir.

Terima kasih 🙏
Wassalamu'alaikum Wr. Wb.

~ Fernando & Silvy ~
```

## ⚙️ CUSTOM DOMAIN (Opsional)

Jika ingin domain sendiri seperti `undanganfernandosilvy.com`:
1. Beli domain di Niagahoster/Namecheap (±Rp 150rb/tahun)
2. Di GitHub Settings → Pages → Custom domain
3. Masukkan domain Anda
4. Update DNS domain ke GitHub

## 🔒 KEAMANAN & SSL

GitHub Pages otomatis memberikan:
- ✅ HTTPS/SSL Certificate (website aman)
- ✅ Global CDN (loading cepat di seluruh dunia)
- ✅ DDoS protection
- ✅ 99.9% uptime

## 📊 ANALYTICS (Opsional)

Untuk tracking pengunjung, tambahkan:
1. Google Analytics
2. atau lihat di GitHub repository → Insights → Traffic

---

## 🆘 TROUBLESHOOTING

### **Website tidak muncul?**
- Tunggu 5-10 menit setelah enable Pages
- Pastikan file `index.html` ada di root folder
- Check Settings → Pages apakah sudah aktif

### **Error 404?**
- Pastikan repository public (bukan private)
- Pastikan nama file `index.html` (bukan `Index.html`)

### **Gambar tidak muncul?**
- Pastikan semua file di folder `assets` sudah terupload
- Check case-sensitive nama file (JPG vs jpg)

---

## ✅ CHECKLIST

Sebelum go-live:
- [ ] Repository sudah dibuat: `undangan-fernando-silvy`
- [ ] Semua file sudah diupload
- [ ] GitHub Pages sudah aktif
- [ ] Website bisa diakses di browser
- [ ] Test di mobile phone
- [ ] Buat URL pendek
- [ ] Siapkan template WhatsApp

**Selamat! Website undangan Anda sudah online! 🎉**

---
*Last updated: August 2025*
