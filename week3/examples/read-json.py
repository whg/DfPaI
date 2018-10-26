import json

data = json.load(open('weather.json'))

temp = data['main']['temp'] - 272.15

print('The temperature in ' + data['name'] + ' is ' + str(temp))

print('The temperature in {} is {}'.format(data['name'], temp))
