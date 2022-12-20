# Intune Packages

Download the zip and upload the intunewin files right to Endpoint manager or compile them yourself with the knowledge others have shared. 
Link for the packageing app https://github.com/microsoft/Microsoft-Win32-Content-Prep-Tool/blob/master/IntuneWinAppUtil.exe

## Give credit where its due
https://www.thelazyadministrator.com/2020/02/05/intune-chocolatey-a-match-made-in-heaven/ for starting this 
https://rhtenhove.nl/blog/intune-chocolatey/ for making it dynamic.

## Intune
Import both the Intunewin apps the Chocolatey.intunewin is the actual Chocolatey software. The chocolateyPackageInstaller.intunewin is for adding software after.

Make sure you add dependencies to chocolatey before every chocolateyPackageInstaller.

### Install Scripts
After testing on a test box with the syntax you need from Installing.
If the example was 
```
.\chocolateyPackageInstaller\install.ps1 -package *PACKAGENAME* -chocoparam "--source=https://community.chocolatey.org/api/v2/, --version=8.4.5"
```

Your intune install script would be
```
powershell.exe -executionpolicy bypass .\install.ps1 -package *PACKAGENAME* -chocoparam "--source=https://community.chocolatey.org/api/v2/, --version=8.4.5"
```
The uninstall script would be
```
powershell.exe -executionpolicy bypass .\install.ps1 -package *PACKAGENAME* -uninstall
```

## Installing
For normal install right from the community page use this
```
.\chocolateyPackageInstaller\install.ps1 -package *PACKAGENAME*
```

Currently in -chocoparam "" the , is being used to split the variables. So you can use any number of the chocolatey install switches just make sure to seperate them with a ','. 

To specify version and source use this change the package to whatever package you would like from the community or your private repository.
``` 
.\chocolateyPackageInstaller\install.ps1 -package *PACKAGENAME* -chocoparam "--version=4.28.184, --source=https://community.chocolatey.org/api/v2/"
```

## Uninstalling
``` 
.\chocolateyPackageInstaller\install.ps1 -package slack -uninstall
```

## to-do
Add check with detection script
