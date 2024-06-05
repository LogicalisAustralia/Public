# Install Chocolatey
Set-ExecutionPolicy Bypass -Scope Process -Force; iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))

# Install PowerShell 7
choco install powershell-core -y

# Install VS Code
choco install vscode -y

# Install RVTools
choco install RVTools -y

# Add PowerShell 7 to PATH
[System.Environment]::SetEnvironmentVariable('PATH', $env:PATH + ';C:\Program Files\PowerShell\7', [System.EnvironmentVariableTarget]::Machine)

# Install PowerShell Modules
Install-PackageProvider -Name NuGet -MinimumVersion 2.8.5.201 -Force
Install-Module -Name ImportExcel -Repository PSGallery -SkipPublisherCheck -AllowClobber -Force -Confirm:$false
Install-Module -Name Az -Repository PSGallery -SkipPublisherCheck -AllowClobber -Force -Confirm:$false
Install-Module -Name VMware.PowerCLI -Repository PSGallery -SkipPublisherCheck -AllowClobber -Force -Confirm:$false
