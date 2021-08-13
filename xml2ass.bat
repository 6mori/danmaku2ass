SET INPUT_FILE=%*

python "danmaku2ass.py" %INPUT_FILE% -f Niconico -s 683x384 -o %INPUT_FILE:xml=ass% -fn ΊΪΜε
pause