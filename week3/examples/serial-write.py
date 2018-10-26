import serial

port = serial.Serial('/dev/ttyUSB0')

while True:
    
    msg = input()
    
    if msg == 'a':
        port.write(b'a')
    else:
        port.write(b'b')

