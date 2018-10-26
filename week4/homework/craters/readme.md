# Moon craters

## 1

Run the `moon-craters.py` script in this folder of this week to get a CSV of the craters of the moon from Wikipedia.

Using the Processing template in this folder, draw these on the surface of a sphere. The result should look something like:

![boxes](https://raw.githubusercontent.com/whg/DfPaI/master/week4/homework/craters/boxes.png)

You only need to use `translate`, `rotateX` and `rotateY`. The order is important!

## 2

Edit the Python script to also download the diameters of the craters. The xpath selector you would need to use is:

```
//tbody[1]/tr/td[3]/text()
```

Use this to output a CSV that has 3 coloumns: lat, lon, diameter.

## 3

Import the new CSV with diameters and visualise the craters with circles. The result should look like:

![craters](https://raw.githubusercontent.com/whg/DfPaI/master/week4/homework/craters/craters.png)

### Tips

If you want to make sure that your craters are in the right place, you can check their position with their (lat, lon) converted to an (x, y, z) position. Use this function to check:

```processing
PVector getCartesian(float lat, float lon, float radius) {
  float z = cos(lon) * cos(lat) * radius;
  float y = sin(lon) * cos(lat) * radius;
  float x = sin(lat) * moonRadius;
  return new PVector(x, y, z);
}
```

I found that I also needed an offset of `HALF_PI` in `rotateZ` to make it correct!
