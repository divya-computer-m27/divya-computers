@echo off
echo [1/5] Checking Git installation...
git --version >nul 2>&1
if %errorlevel% neq 0 (
    echo Git is not installed or not in PATH! Please install Git from https://git-scm.com/
    pause
    exit
)

echo [2/5] Initializing Git Repository...
git init

echo [3/5] Adding website files...
git add .

echo [4/5] Committing changes...
git commit -m "Divya Computers Automated Commit"

echo [5/5] Connecting to GitHub and Pushing...
git branch -M main
git remote remove origin >nul 2>&1
git remote add origin https://github.com/divya-computer-m27/divya-computers.git
git push -u origin main

echo ========================================================
echo SUCCESS! Your code has been uploaded to GitHub!
echo ========================================================
pause