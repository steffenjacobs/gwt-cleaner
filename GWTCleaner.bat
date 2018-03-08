@echo off
del %TEMP%\gwt* /F /Q
echo deleted gwt*
del %TEMP%\ImageResourceGenerator* /F /Q
echo deleted ImageResourceGenerator files
del %TEMP%\uiBinder_* /F /Q
echo deleted UI-Binder files
del %TEMP%\*css_converter*css.tmp /F /Q
echo deleted CSS Converter files

cd %TEMP%
for /f %%i in ('dir /a:d /s /b gwtc*') do rd /s /q %%i
echo deleted gwtc folders
for /f %%i in ('dir /a:d /s /b gwt-codeserver-*') do rd /s /q %%i
echo deleted gwt-codeserver folders

set choice=
set /p choice=Delete gwt cache? (y/n)
if '%choice%'=='y' goto DEL
if '%choice%'=='yes' goto DEL
goto END

:DEL
for /f %%i in ('dir /a:d /s /b gwt-cache-*') do rd /s /q %%i
echo deleted gwt-cache

:END
echo Done.
