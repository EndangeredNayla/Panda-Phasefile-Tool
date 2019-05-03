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

set INPUT=-1
set /P INPUT=Selection:


if %INPUT%==1 (
    goto extract
) else if %INPUT%==2 (
    goto compress
) else (
	goto selection
)

:extract

set TE="n"
set /p TE=Are you sure you want to procead? Doing so will overight the existing files = 
if /I "%TE%"=="yes" goto ego
if /I "%TE%"=="y" goto ego
if /I "%TE%"=="no" EXIT
if /I "%TE%"=="n" EXIT
) else (
    echo.
    echo ==============
    echo Type Yes or No
    echo ==============
    echo.
	goto extract
)

:ego

echo Extracting files, this may take a couple minutes.
echo Extracting Files 10%%
multify.exe -x -f phase_3.5.mf
multify.exe -x -f phase_3.mf
echo Extracting Files 20%%
multify.exe -x -f phase_4.mf
echo Extracting Files 30%%
multify.exe -x -f phase_5.mf
multify.exe -x -f phase_5.5.mf
echo Extracting Files 40%%
multify.exe -x -f phase_6.mf
echo Extracting Files 50%%
multify.exe -x -f phase_7.mf
echo Extracting Files 60%%
multify.exe -x -f phase_8.mf
echo Extracting Files 70%%
multify.exe -x -f phase_9.mf
echo Extracting Files 80%%
multify.exe -x -f phase_10.mf 
echo Extracting Files 90%%
multify.exe -x -f phase_11.mf
multify.exe -x -f phase_12.mf
multify.exe -x -f phase_13.mf
echo Extracting Files 100%% 
echo All files extracted.
PAUSE
EXIT

:compress

:extract

set TF="n"
set /p TF=Are you sure you want to procead? Doing so will overight the existing .MFs. = 
if /I "%TF%"=="yes" goto cgo
if /I "%TF%"=="y" goto cgo
if /I "%TF%"=="no" EXIT
if /I "%TF%"=="n" EXIT
) else (
    echo.
    echo ==============
    echo Type Yes or No
    echo ==============
    echo.
	goto extract
)

:cgo

echo Packaging Files, this may take a couple minutes.
echo Packaging Files 10%%
multify.exe -c -f phase_3.5.mf phase_3.5
multify.exe -c -f phase_3.mf phase_3
echo Packaging Files 20%%
multify.exe -c -f phase_4.mf phase_4
echo Packaging Files 30%%
multify.exe -c -f phase_5.mf phase_5
multify.exe -c -f phase_5.5.mf phase_5.5
echo Packaging Files 40%%
multify.exe -c -f phase_6.mf phase_6
echo Packaging Files 50%%
multify.exe -c -f phase_7.mf phase_7
echo Packaging Files 60%%
multify.exe -c -f phase_8.mf phase_8
echo Packaging Files 70%%
multify.exe -c -f phase_9.mf phase_9
echo Packaging Files 80%%
multify.exe -c -f phase_10.mf phase_10
echo Packaging Files 90%%
multify.exe -c -f phase_11.mf phase_11
multify.exe -c -f phase_12.mf phase_12
multify.exe -c -f phase_13.mf phase_13
echo Packaging Files 100%%
echo All files packaged.
PAUSE
EXIT