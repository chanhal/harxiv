rm -f recent.json
time scrapy crawl arxiv -o recent.json
python3 postdeal.py recent.json recent.html