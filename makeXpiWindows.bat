@echo off
IF "%1"=="/P" (
    set /P sevenzpath=Enter your 7z.exe path: 
) ELSE (
    set sevenzpath="C:\Program Files\7-Zip\7z.exe"
)

IF EXIST ScratchAddons\ (
    echo "Please remove the ScratchAddons directory or move to another directory!"
    GOTO End
)
git clone https://github.com/ScratchAddons/ScratchAddons.git
IF EXIST ScratchAddons.xpi (
    del ScratchAddons.xpi
)
cd ScratchAddons
%sevenzpath% a -tzip ..\ScratchAddons.xpi *.* -r > nul
cd ../
rmdir /Q /S ScratchAddons
echo ScratchAddons.xpi has been created.
:End
PAUSE
