# Install Chocolatey
Set-ExecutionPolicy Bypass -Scope Process -Force; iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))

# Install PowerShell 7
choco install powershell-core -y

# Install VS Code
choco install vscode -y

# Add PowerShell 7 to PATH
[System.Environment]::SetEnvironmentVariable('PATH', $env:PATH + ';C:\Program Files\PowerShell\7', [System.EnvironmentVariableTarget]::Machine)
