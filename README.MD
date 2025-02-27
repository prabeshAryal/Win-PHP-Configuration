Here's a **GitHub README** for your PowerShell script:

---

# 💻 Auto-Setup Script for Scoop, VS Code, and PHP  

This PowerShell script automates the installation of **Scoop**, essential developer tools, and **PHP** for Visual Studio Code. It also updates VS Code settings for **Five Server** and ensures that your environment is correctly configured.

## 📌 Features  
✅ Asks the user if they want to install **Scoop**  
✅ Installs **Git, 7zip, Fastfetch, PHP, and VS Code** (if not already installed)  
✅ Adds the **extras** bucket to Scoop for VS Code installation  
✅ Configures **Five Server** with the correct PHP executable path  
✅ Updates VS Code's `settings.json` with the required paths  
✅ Installs the **Five Server** VS Code extension  

## 🚀 Usage  

1️⃣ **Download & Run** the script in PowerShell:
```powershell
.\InstallPHP.ps1
```
OR

1️⃣ **Click and Run** `LazyInstall.bat`

2️⃣ Follow the on-screen prompts to install **PHP**.  

3️⃣ The script will handle the rest—installing applications, updating VS Code settings, and configuring PHP.  
4️⃣ Create or open a php file anywhere in VSCode and Press that **Go Live** button at the bottom right corner in VSCode Window and see the magic✨🪄.

## 🔧 What This Script Does  

- If Scoop is **not installed**, it installs Scoop and the required applications (scoop, 7zip, git, fastfetch, php).
- Checks if **VS Code** is installed—if not, it installs it via Scoop.  
- Installs the **Five Server** extension for VS Code.  
- Extracts the **current username** and updates VS Code settings in:  
  ```
  C:\Users\YourUsername\AppData\Roaming\Code\User\settings.json
  ```
- Adds the correct PHP path to `settings.json`.  


## 🎉 Final Output  
When the script completes, you’ll see:  
```
Your VS Code is powered successfully with PHP.
```

Enjoy your **fully configured** VS Code environment with PHP support! 🚀  

---

This README provides clear instructions and highlights the script’s functionality. Let me know if you'd like any changes! 😊