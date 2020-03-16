@echo off
title Phasefile Tool: By CrankySupertoon
echo ===============================================================================
echo WARNING!: If you are running Extract make sure there are no folders, and if you
echo                are running Compress make sure their are no .MFs.
echo                    Otherwise it will reset the files to 1kb.
echo                              What do you want to do!
echo ===============================================================================
echo.
echo #1 - Extract .mf Files to Folders
echo #2 - Compress Folders to .mf Files
echo.

:selection
choice /c 123 /n /m "Pick! [1,2,3]
if errorlevel 2 goto compress
if errorlevel 3 EXIT

:extract
choice /c YN /n /m "Are you sure you want to procead? Doing so will overight the existing files! [Y,N]
if errorlevel 2 goto kill
cls
echo Extracting files, this may take a while.
multify.exe -x -f phase_3.5.mf
multify.exe -x -f phase_3.mf
multify.exe -x -f phase_4.mf
multify.exe -x -f phase_5.mf
multify.exe -x -f phase_5.5.mf
multify.exe -x -f phase_6.mf
multify.exe -x -f phase_7.mf
multify.exe -x -f phase_8.mf
multify.exe -x -f phase_9.mf
multify.exe -x -f phase_10.mf 
multify.exe -x -f phase_11.mf
multify.exe -x -f phase_12.mf
multify.exe -x -f phase_13.mf
echo All files extracted.
goto kill

:compress
choice /c 123 /n /m "Are you sure you want to procead? Doing so will overight the existing files! [Y,N]
if errorlevel 2 goto kill
cls
echo Packaging Files, this may take a while.
multify.exe -c -f phase_3.5.mf phase_3.5
multify.exe -c -f phase_3.mf phase_3
multify.exe -c -f phase_4.mf phase_4
multify.exe -c -f phase_5.mf phase_5
multify.exe -c -f phase_5.5.mf phase_5.5
multify.exe -c -f phase_6.mf phase_6
multify.exe -c -f phase_7.mf phase_7
multify.exe -c -f phase_8.mf phase_8
multify.exe -c -f phase_9.mf phase_9
multify.exe -c -f phase_10.mf phase_10
multify.exe -c -f phase_11.mf phase_11
multify.exe -c -f phase_12.mf phase_12
multify.exe -c -f phase_13.mf phase_13
echo All files packaged.

:kill
PAUSE
EXIT