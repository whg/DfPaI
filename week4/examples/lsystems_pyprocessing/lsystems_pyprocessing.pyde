
start = 'F-G-G'
angle = radians(120)
line_length = 100
sierpinski_rules = [
    (u'G', u'GG'),
    (u'F', u'F-G+F+G-F'),
]
system = None

def draw_system(system):
    pushMatrix()
    for c in system:
        if c == u'F' or c == u'G':
            line(0, 0, line_length, 0)
            translate(line_length, 0)
        elif c == '-':
            rotate(-angle)
        elif c == '+':
            rotate(angle)
            
    popMatrix()
    
def iterate_system(system, rules):
    output = system[:]
    for key, value in rules:
        output = output.replace(key, value)
    return output

def setup():
    global system
    size(500, 500)
    stroke(255)
    
    system = iterate_system(start, sierpinski_rules)
    # println(system)
    # system = iterate_system(system, sierpinski_rules)

    
def draw():
    background(0)
    translate(100, 100)
    draw_system(system)
