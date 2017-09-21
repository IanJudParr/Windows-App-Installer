if "%1" == "installchoco" GOTO InstallChoco
if "%2" == "dell" GOTO InstallDell

GOTO InstallApps

:InstallChoco
  Powershell.exe Set-ExecutionPolicy RemoteSigned
  Powershell.exe -File ChocoInstall.ps1
  GOTO InstallApps
GOTO End


:InstallDell
  Powershell.exe -File DellSystem.ps1
  GOTO InstallApps
GOTO End


:InstallApps
  Powershell.exe -File AppInstaller.ps1
GOTO End

:End