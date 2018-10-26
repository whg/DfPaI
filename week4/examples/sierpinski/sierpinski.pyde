# start= 'F-G-G'
start = 'F'
angle= radians(60)
line_length = 300

sierpinski_rules = {
        # (u'G', u'GG'),
        # (u'F', u'F-G+F+G-F'),
        'G': u'F+G+F',
        'F': u'G-F-G',
        
}

def draw_system(system):
   pushMatrix()
   for c in system:
       if c == 'F' or c == 'G':
           line(0,0,line_length,0)
           translate(line_length,0)
       elif c == '-':
           rotate(-angle)
       elif c == '+':
           rotate(angle)

   popMatrix()

def iterate_system(system, rules):
   output = ''
   for c in system:
       if c in rules.keys():
           for key, value in rules.items():
               if c == key:
                   output += value
       else:
           output += c
           
   return output


def setup():
   global system
   global line_length
   
   size(500,500)
   stroke(255)

   system = iterate_system(start, sierpinski_rules)

   for i in range(8):
      system = iterate_system(system, sierpinski_rules)
      line_length /= 2


def draw():
   background(0)
   translate(0, height)
   draw_system(system)
