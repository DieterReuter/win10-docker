# install chocolatey
iex ((new-object net.webclient).DownloadString('https://chocolatey.org/install.ps1'))

# install git + ssh
choco install -y git -params "/GitAndUnixToolsOnPath"
