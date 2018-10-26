import requests
from lxml import etree
import time

urls = [
    'https://en.wikipedia.org/wiki/List_of_craters_on_the_Moon:_A%E2%80%93B',
    'https://en.wikipedia.org/wiki/List_of_craters_on_the_Moon:_C%E2%80%93F',
    'https://en.wikipedia.org/wiki/List_of_craters_on_the_Moon:_G%E2%80%93K',
    'https://en.wikipedia.org/wiki/List_of_craters_on_the_Moon:_O%E2%80%93Q',
    'https://en.wikipedia.org/wiki/List_of_craters_on_the_Moon:_R%E2%80%93S',
    'https://en.wikipedia.org/wiki/List_of_craters_on_the_Moon:_T%E2%80%93Z',
    'https://en.wikipedia.org/wiki/List_of_craters_on_the_Moon:_L%E2%80%93N'
]

parser = etree.HTMLParser()

def get_coords(url):
    res = requests.get(url)

    tree = etree.fromstring(res.text, parser)
    coords = tree.xpath('//span[@class="geo"]/text()')

    return coords


all_coords = []
for url in urls:
    coords = get_coords(url)
    all_coords += coords
    #  ^ this is the same as all_coords.extend(coords)

    print('added {} coords'.format(len(coords)))

print('total of {}'.format(len(all_coords)))

with open('moon_crater_coords.csv', 'w') as f:
    f.write('lat,lon\n')
    for coord in all_coords:
        lat, lon = coord.split('; ')
        f.write('{},{}\n'.format(lat, lon))
