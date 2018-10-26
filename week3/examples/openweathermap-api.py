"""
Get the weather somewhere using the OpenWeatherMap API.

Make sure you put your own API token below!
"""

import requests
import json

url = 'http://api.openweathermap.org/data/2.5/weather'

place = input()

params = {
    'q': place,
    'APPID': '!!! put your own token here !!!',
}

response = requests.get(url, params=params)

data = json.loads(response.text)

# this is the same as the line above
#data = response.json()

temp = data["main"]["temp"] - 273
print('temp in {} is {}'.format(place, temp))
