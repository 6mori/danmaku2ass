REM echo off
SETLOCAL ENABLEDELAYEDEXPANSION

SET INPUT_DIR=%*
SET XML_SUFFIX=*.xml

for %%i in (%INPUT_DIR%%XML_SUFFIX%) do (
    SET INPUT_FILE="%%i"
    SET OUTPUT_FILE=!INPUT_FILE:xml=ass!
    if not exist OUTPUT_FILE (
        python "danmaku2ass.py" !INPUT_FILE! -f Niconico -s 683x384 -o !OUTPUT_FILE! -fn ºÚÌå
    )
)
pause
