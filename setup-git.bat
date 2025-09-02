@echo off
echo ========================================
echo     SETUP GIT PERTAMA KALI
echo ========================================
echo.

:: Check if git is installed
git --version >nul 2>&1
if %errorlevel% neq 0 (
    echo ERROR: Git belum terinstall!
    echo Download di: https://git-scm.com/download/win
    pause
    exit
)

:: Check if we're in the right directory
if not exist "index.html" (
    echo ERROR: File index.html tidak ditemukan!
    echo Pastikan Anda menjalankan script ini di folder d:\Undangan\undangan
    pause
    exit
)

echo Konfigurasi Git...
echo.

:: Set Git configuration
set /p user_name="Masukkan GitHub Username (C4AnN): "
if "%user_name%"=="" set user_name=C4AnN

set /p user_email="Masukkan Email GitHub Anda: "
if "%user_email%"=="" (
    echo ERROR: Email harus diisi!
    pause
    exit
)

git config --global user.name "%user_name%"
git config --global user.email "%user_email%"
git config --global init.defaultBranch main

echo.
echo Initializing Git repository...

:: Initialize git
git init

:: Add remote
git remote add origin https://github.com/C4AnN/undangan-fernando-silvy.git

:: Add all files
echo Adding files...
git add .

:: Initial commit
echo Creating initial commit...
git commit -m "Initial commit: Upload website undangan pernikahan"

:: Push to GitHub
echo.
echo ========================================
echo     PUSHING TO GITHUB...
echo ========================================
echo.
echo PENTING: Gunakan Personal Access Token sebagai password!
echo Bukan password GitHub biasa.
echo.
echo Cara buat token:
echo 1. GitHub.com ^> Settings ^> Developer settings
echo 2. Personal access tokens ^> Generate new token
echo 3. Pilih scope 'repo'
echo.

git push -u origin main

if %errorlevel% == 0 (
    echo.
    echo ========================================
    echo     SETUP BERHASIL!
    echo ========================================
    echo.
    echo Repository berhasil dibuat dan diupload!
    echo.
    echo Langkah selanjutnya:
    echo 1. Buka https://github.com/C4AnN/undangan-fernando-silvy
    echo 2. Settings ^> Pages
    echo 3. Source: Deploy from branch ^> main
    echo 4. Save
    echo.
    echo Website akan tersedia di:
    echo https://c4ann.github.io/undangan-fernando-silvy
    echo.
) else (
    echo.
    echo ERROR: Push gagal!
    echo Pastikan:
    echo 1. Repository sudah dibuat di GitHub
    echo 2. Menggunakan Personal Access Token
    echo 3. Internet connection OK
    echo.
)

pause
