#!/bin/bash

ymd=$(date +"./out/%Y-%m-%d.html")

rm -f recent.json
time scrapy crawl arxiv -o recent.json
python3 postdeal.py recent.json $ymd