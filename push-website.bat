@echo off
echo ========================================
echo     GIT PUSH SCRIPT UNTUK UNDANGAN
echo ========================================
echo.

:: Check if we're in the right directory
if not exist "index.html" (
    echo ERROR: File index.html tidak ditemukan!
    echo Pastikan Anda menjalankan script ini di folder d:\Undangan\undangan
    pause
    exit
)

:: Show current status
echo Checking status...
git status
echo.

:: Ask for commit message
set /p commit_msg="Masukkan pesan commit (contoh: Update foto mempelai): "
if "%commit_msg%"=="" set commit_msg=Update website

:: Add all changes
echo.
echo Adding changes...
git add .

:: Commit changes
echo Committing changes...
git commit -m "%commit_msg%"

:: Push to GitHub
echo Pushing to GitHub...
git push origin main

if %errorlevel% == 0 (
    echo.
    echo ========================================
    echo     BERHASIL! WEBSITE AKAN UPDATE
    echo ========================================
    echo.
    echo Website akan update dalam 1-2 menit:
    echo https://c4ann.github.io/undangan-fernando-silvy
    echo.
) else (
    echo.
    echo ========================================
    echo       ERROR SAAT PUSH!
    echo ========================================
    echo.
    echo Cek koneksi internet atau GitHub token
    echo.
)

pause
