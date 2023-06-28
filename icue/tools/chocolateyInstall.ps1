$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  fileType      = 'exe'
  url           = 'https://downloads.corsair.com/Files/icue/Install-iCUE-5.3.exe'
  checksum      = '667223851cb32dd2ed72995b117d0dc245acbcf6a550f0b53af06f1c60ad5607'
  checksumType  = 'SHA256'

  softwareName  = 'icue*'

  silentArgs    = "/QN"
  validExitCodes= @(0)
}

Install-ChocolateyPackage @packageArgs
