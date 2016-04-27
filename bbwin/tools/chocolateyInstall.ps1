
$ErrorActionPreference = 'Stop';


$packageName= 'bbwin'
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'http://sourceforge.net/projects/bbwin/files/bbwin/0.13/BBWin_0.13.msi/download'
$url64      = $url

$packageArgs = @{
  packageName   = $packageName
  unzipLocation = $toolsDir
  fileType      = 'msi'
  url           = $url
  url64bit      = $url64

  silentArgs    = "/qn /norestart /l*v `"$env:TEMP\chocolatey\$($packageName)\$($packageName).MsiInstall.log`""
  validExitCodes= @(0, 3010, 1641)

  softwareName  = 'bbwin*'
  checksum      = '84f489dbe4dc071001d0e680f5d90b02'
  checksumType  = 'md5'
  checksum64    = '84f489dbe4dc071001d0e680f5d90b02'
  checksumType64= 'md5'
}


  Install-ChocolateyPackage @packageArgs

















