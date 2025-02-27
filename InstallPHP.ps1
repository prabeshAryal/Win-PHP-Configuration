# Ask user if they want to install Scoop
$installScoop = Read-Host "Do you want to install Scoop? (yes/no)"
if ($installScoop -eq "yes") {
    # Set execution policy
    Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Scope CurrentUser -Force
    
    # Install Scoop
    Invoke-RestMethod -Uri https://get.scoop.sh | Invoke-Expression
    
    # Install required applications
    scoop install git
    scoop install 7zip
    scoop install fastfetch
    
    # Check if VS Code is installed
    if (-Not (Get-Command code -ErrorAction SilentlyContinue)) {
        scoop bucket add extras
        scoop install extras/vscode
    }
    
    scoop install main/php
    
    Write-Host "Scoop and required applications installed successfully."
} else {
    Write-Host "Exiting installation."
    exit
}

# Install Five Server extension
code --install-extension yandeu.five-server


# Extract current username
$username = $env:USERNAME

# Define JSON key-value pairs
$jsonUpdates = @{
    "fiveServer.php.executable" = "C:\\Users\\$username\\scoop\\shims\\php.exe"
    "fiveServer.php.ini" = "C:\\Users\\$username\\scoop\\shims\\php.ini"
    "php.validate.executablePath" = ""
}

# Define VS Code settings file path
$settingsPath = "C:\Users\$username\AppData\Roaming\Code\User\settings.json"

# Check if settings.json exists
if (Test-Path $settingsPath) {
    # Read existing settings
    $settings = Get-Content -Path $settingsPath -Raw | ConvertFrom-Json -ErrorAction SilentlyContinue
    
    if (-not $settings) {
        $settings = @{}
    }
    
    # Update settings with new values
    foreach ($key in $jsonUpdates.Keys) {
        $settings["$key"] = $jsonUpdates[$key]
    }
    
    # Save updated settings back to settings.json
    $settings | ConvertTo-Json -Depth 3 | Set-Content -Path $settingsPath -Encoding UTF8
    Write-Host "VS Code settings updated successfully."
} else {
    Write-Host "VS Code settings file not found. Skipping update."
}


Write-Host "Your VS Code is powered successfully with PHP."
