@echo off
@color C
echo """""""""""""""""""""""""""""""""""""""""""""""""""""""""
echo "  _____            ____                 __      _____  "
echo " |  __ \          |  _ \                \ \    / /__ \ "
echo " | |  | | ___  ___| |_) | ___  ___ ___   \ \  / /   ) |"
echo " | |  | |/ _ \/ __|  _ < / _ \/ __/ __|   \ \/ /   / / "
echo " | |__| | (_) \__ \ |_) | (_) \__ \__ \    \  /   / /_ "
echo " |_____/ \___/|___/____/ \___/|___/___/     \/   |____|"
echo "                                                       "
echo "                                   By Shahar Rosenberg "
echo """""""""""""""""""""""""""""""""""""""""""""""""""""""""
set /P idf=Name of Project You Want To Run :
:sup
echo program launched!
@ %cd%\dos\dosbox.exe -conf %cd%\dos\config.conf -c "mount c: %cd%" -c "c:" -c "cls" -c "starter.bat %idf%" -noconsole
set /P again=Do You Want To Run Again? Y/N :
if "%again%"=="Y" goto sup
if "%again%"=="y" goto sup
echo closing and cleaning up...
del stderr.txt
del stdout.txt