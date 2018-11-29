$ErrorActionPreference = 'Stop';
$jarFile = "$env:ChocolateyPackageFolder\antlr-4.7.1-complete.jar"
$cmdFile = "$env:ChocolateyPackageFolder\tools\java.cmd"
$checksum      = 'F41DCE7441D523BAF9769CB7756A00F27A4B67E55AACAB44525541F62D7F6688'
$checksumType  = 'sha256'
$url = "https://www.antlr.org/download/antlr-4.7.1-complete.jar"

Get-ChocolateyWebFile -PackageName $env:ChocolateyPackageName -FileFullPath $jarFile -Url $url -Checksum $checksum -ChecksumType  $checksumType
Install-BinFile -Name $env:ChocolateyPackageName -Path "$cmdFile" -Command $jarFile