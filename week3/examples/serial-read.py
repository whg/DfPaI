import serial

port = serial.Serial('/dev/ttyUSB0')

while True:
    
    line = port.readline()
    print(line)

    data = line.decode('utf8')
    print(data)
    print('-')

    stripped_data = data.strip()
    print(stripped_data)
    
    print('---')
