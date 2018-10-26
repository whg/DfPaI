from PIL import Image

# pixels = list(img.getdata())
# img.putdata(pixels)

img = Image.open('ottero0.jpg')

for i in range(1999, 3000):
    input_filename = 'ottero{}.jpg'.format(i)

    img = img.rotate(90, expand=True)
    img.save(input_filename)
    img = Image.open(input_filename)
    
    # print('reading {}, saving to {}'.format(input_filename, output_filename))
