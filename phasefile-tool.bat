@echo off
title PhaseFile Tool: By CrankySupertoon
echo ===============================================================================
echo !: If you are running Extract make sure there are no folders, and if you
echo                are running Compress make sure their are no .MFs.
echo                    Otherwise it will reset the files to 1kb.
echo                              What do you want to do!
echo ===============================================================================
echo.
echo #1 - Extract .mf Files to Folders
echo #2 - Compress Folders to .mf Files
echo.

:selection
choice /c 123 /n /m "Pick! [1,2]
if errorlevel 2 goto compress

:extract
choice /c YN /n /m "Are you sure you want to procead? Doing so will merge files with any existing folders! [Y,N]
if errorlevel 2 goto kill
cls
echo Extracting files, this may take a while.
for %%f in (*.mf) do ("multify.exe" -x -f "%%~df%%~pf%%~nf.mf")
echo All files extracted.
goto kill

:compress
if exist *.mf (
choice /c YN /n /m "MF Files already exist! Are you sure you want to overwrite them? [Y,N]
if errorlevel 2 goto kill
)
cls
echo Packaging Files, this may take a while.
for /d %%f in (phase_*) do ("multify.exe" -c -f "%%f.mf" "%%f")
echo All files packaged.
goto kill

:kill
PAUSE
EXIT