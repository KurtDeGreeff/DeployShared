@echo off

for %%d in (c d e f g h i j k l m n o p q r s t u v w x y z) do if exist %%d:\MININT\Scripts\setupcomplete.cmd ( 
reg add "HKEY_LOCAL_MACHINE\SYSTEM\Setup" /v SetupType /t REG_DWORD /d 2 /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\Setup" /v CmdLine /t REG_SZ /d "%%d:\MININT\Scripts\setupcomplete.cmd" /f 
echo %DATE%-%TIME% Registered Setupcomplete.cmd in registry >> %%d:\MININT\SMSOSD\OSDLOGS\setupcomplete.log)

for %%d in (c d e f g h i j k l m n o p q r s t u v w x y z) do if exist %%d:\MININT\Scripts\SetUpgradeStatus.wsf (cscript.exe %%d:\MININT\Scripts\SetUpgradeStatus.wsf OSUpgrade:SUCCESS)

for %%d in (c d e f g h i j k l m n o p q r s t u v w x y z) do if exist %%d:\MININT\Scripts\LTIBootstrap.vbs (wscript.exe %%d:\MININT\Scripts\LTIBootstrap.vbs ) 

for %%d in (c d e f g h i j k l m n o p q r s t u v w x y z) do if exist %%d:\MININT\Scripts\SetUpgradeStatus.wsf (cscript.exe %%d:\MININT\Scripts\SetUpgradeStatus.wsf OSUpgrade:COMPLETED)

