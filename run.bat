@echo off

del recent.json

@REM rem 根据当前日期获取，年月日串
@REM set yyyy=%date:~,4%
@REM set mm=%date:~5,2%
@REM set day=%date:~8,2% 
@REM set "YYYYmmdd=%yyyy%%mm%%day%.html"
@REM rem 把年月日串中的空格替换为0
@REM set "YYYYmmdd=%YYYYmmdd: =0%"

set ymd=%date:~0,4%-%date:~5,2%-%date:~8,2%
set "ymd=%ymd%.html"

scrapy crawl arxiv -o recent.json
python postdeal.py recent.json ./out/%ymd%
