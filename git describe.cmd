@echo off

for /f "delims=" %%a in ('"C:\Program Files\Git\bin\git.exe" describe --dirty --always') do set version=%%a

echo #ifndef __VERSION_H__                 >version.h
echo #define __VERSION_H__                 >>version.h
echo.                                      >>version.h
echo #define _VERSION      "%version%"     >>version.h
echo.                                      >>version.h
echo #endif                                >>version.h
