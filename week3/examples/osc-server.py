# osc server
from pythonosc import dispatcher
from pythonosc import osc_server

def position_func(addr, msg):
    print(addr, msg)

def temp_func(addr, temperature):
    print('temp is', temperature)

dispatch = dispatcher.Dispatcher()
dispatch.map("/position", position_func)
dispatch.map("/temp", position_func)


addr = ('0.0.0.0', 5000)

server = osc_server.ForkingOSCUDPServer(addr, dispatch)
server.serve_forever()
