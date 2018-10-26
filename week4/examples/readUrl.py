import requests
from lxml import etree
import time

while True:
    res = requests.get("http://mrfeinberg.com/peasycam/")

    parser = etree.HTMLParser()
    tree = etree.fromstring(res.text, parser)

    bits = tree.xpath('//*[@id="about"]/p[1]/text()')
    text = ' '.join(bits)

    print(text)

    time.sleep(1)
