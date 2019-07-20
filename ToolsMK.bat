@echo off
title You can do anything Using this apps
color 0a

:menu
cls
echo.
echo ============Here all Shortcut key details=============
echo.
echo 1.Enter 'F' for Create Folder
echo 2.Enter 'D' for Delete Folder
echo 3.Enter 'H' for Help
echo 4.Enter 'C' for Screen Clear
echo 5.Enter 'I' for Delete Image
echo 6.Enter 'DE' for Delete all file using extension
echo 7.Enter 'SH' for See all Hidden file
echo 8.Enter 'CH' for chack IP address
echo 9.Enter 'SI' for chack System information
echo 10.Enter 'AU' for About Us.

echo 11.Enter 'E' for Exit
echo.
echo ======================================================


===============================================
:top 
echo.
echo Enter your choice(F,D,E,C,I,H,DE,CH,SI,AU)
set /p "ch=>"


if %ch%==F goto MF
if %ch%==f goto MF

if %ch%==D goto DF
if %ch%==d goto DF

if %ch%==H goto menu
if %ch%==h goto menu

if %ch%==C goto cls
if %ch%==c goto cls

if %ch%==I goto imgde
if %ch%==i goto imgde

if %ch%==DE goto DEX
if %ch%==de goto DEX

if %ch%==SH goto SH
if %ch%==sh goto SH

if %ch%==ch goto IP
if %ch%==CH goto IP

if %ch%==SI goto si
if %ch%==si goto si

if %ch%==AU goto au
if %ch%==au goto au


if %ch%==E goto END
if %ch%==e goto END
cls
echo You enter wrong key try again
echo.
goto top
==========================================


================================================
:MF
cls
echo Enter your folder name to create
set /p "fo=>"
md %fo%
goto top
======================================================
:DF
cls
echo Enter your folder name to remove
set /p "re=>"
rd %re%
goto top
===========================================================
:imgde
cls
echo Enter your Image name to Delete
set /p "re=>"
if %re%==* goto confi
del %re%.jpg
if NOT EXIST "%re%.jpg" goto mes
echo.
echo Successfully deleted!
goto top
============================================================
:mes
cls
echo.
echo There are no file in this name.Please try again
echo.
goto top
===========================================================

:confi
cls
echo.
echo Are you sure you want to delete all image?(Y/N)
set /p "r=>"
if %r%==Y goto del
if %r%==y goto del
if %r%==N goto top
if %r%==n goto top
echo You enter wrong key try again!
echo.
goto confi
===========================================================

:del
cls
del *.jpg
echo.
echo You successfully deleted
goto top

:cls
cls
goto top
=============================================================


:DEX
cls
echo.
echo Enter your extension(jpg,png,jpeg,txt,ect) to delete all file
set /p "de=>"
del "*.%de%"
echo Successfully deleted all file your extention related!
echo.
goto top

=============================================================

:SH
cls
echo.
echo Here all Hidden file
dir /ah
echo.
goto top
=============================================================


:IP
cls
ipconfig
echo.
echo Do you want to creat IP file information?(Y/N)
set /p "ch=>"
if %ch%==y goto cip
if %ch%==Y goto cip
echo You enter wrong key please ty again.
cls
goto top
==========================================================
:cip
ipconfig >IP_Configaration.txt
echo.
echo Your file has been created
goto top
===================================================


:si
cls
systeminfo
echo.
echo.

:csia
echo Do you want to creat System file information?(Y/N)
set /p "ch=>"
if %ch%==y goto csi
if %ch%==Y goto csi
echo You enter wrong key please ty again.
cls
goto top
=============================================================
:csi
systeminfo >System_information.txt
echo.
echo Your file has been created
goto top
===========================================================

:au
cls
echo.
echo.
echo.
echo ===============Welcome to About Us page===============
echo.
echo.
echo 		MD. MEHEDI HASAN KHAN
echo 		B.Sc in CSE
echo           	Daffodill International University
echo. 		
echo.
echo 		Mehedikhan.cse@gmail.com
echo.
echo.
echo.
echo ===============Thank you for visit this page.==============
goto top

:END