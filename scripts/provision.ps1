# install chocolatey
iex ((new-object net.webclient).DownloadString('https://chocolatey.org/install.ps1'))

# install git + ssh
choco install -y git -params "/GitAndUnixToolsOnPath"

# instal Chrome browser
choco install -y GoogleChrome

# install docker tools
choco install -y docker -version 1.8.1
choco install -y docker-machine -version 0.4.1

# enable UAC
Set-ItemProperty -Path HKLM:\Software\Microsoft\Windows\CurrentVersion\policies\system -Name EnableLUA -Value 1

# install Oracle Virtualbox
choco install -y virtualbox
# choco install -y vmwareworkstation
