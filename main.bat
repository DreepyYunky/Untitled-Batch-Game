@ECHO off
call learnset.bat
REM This is Untitled Batch Game, the game with no purpose.

:MAIN

title Untitled Batch Game

set /p name=What's your name? 
ECHO Hi! %name%
Set Level=1
SET Money=0
SET Slap=50
echo You have %Money% money!

set /p fq=To Get money click 1, to exit 3, for help, click 3 - 

if /I %fq% == "1" goto :MONEY
if /I %fq% == "2" exit
if %fq% == "3" GOTO :HELP

:MONEY
cls
COLOR 04
ECHO So, you wanna get money, OK! let's go
ECHO ???: Hey bruh. Give me your money!
Echo %name%: I don't have any money!
echo Stop Lying! Give or battle!
set /p give=Give him or not? (y/n?): 




if %give% == "y" (
  echo +============|
  echo +  $%Money%  |
  echo +============|

  echo ???: Oh thank you! Wait! You have no money after all!
  echo ???: Ok now battle me!!
  echo ??? challenged you!
  goto :BATTLE
)

:BATTLE
  echo +=====================================================================
  echo |%name% Lv. %Level% %LevelLeft%/%HP%      %chalenger% Lv. %ELevel% %EnemyHPLeft%/%HP%|
  echo +=====================================================================

  echo +======================================================
  echo |            1. %move1%                                |
  echo |            2. %move2%                                |
  echo |            3. %move3%                                |
  echo +======================================================

:HELP
set txt=This is the Untitled Batch Game. Either you hate it or love it. don't know about you.
echo %txt%
set /p helpq=Ya Understand? (y/n?)
if /I %helpq% == "y" || "Y" goto :MONEY
if /I %helpq% == "n" || "N" goto :HELP
