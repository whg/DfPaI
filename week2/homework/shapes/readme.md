# Shapes

The idea is to create something like this:

![final](https://raw.githubusercontent.com/whg/DfPaI/master/week2/homework/shapes/shapes.gif)


Don't worry if you don't get to the final result. There are following stages that you should move through before there.

### Boxes along a line

First make a line of boxes that move along like this:

![line](https://raw.githubusercontent.com/whg/DfPaI/master/week2/homework/shapes/line.gif)

#### Tips

Create a `Box` class that represents a box. This should know the start and stop postions and keep track of where it is between the two points. Use `lerp()` to move the box between the two points by increasing the `amt` parameter. You know when the box has got to the end because `amt` will be >= 0, so when that happens move the the box to the beginning and keep it moving.

Create a `Line` class to represent a line. This should have a start and end `PVector` and an array (or `ArrayList`) of `Box`es.

### Icosahedron

Check out the Wikipedia entry for an [Icosahedron](https://en.wikipedia.org/wiki/Regular_icosahedron) to get the coordinates. Make an `ArrayList` of `Line`s to hold all the lines.


### Animating

* Rotate in both the x and y axes.
* Use `sin()` to set the the overall size of the shape. You can use `scale()` for this, or if you want do do it manually and keep the sizes of the `box`es constant, you can multiply the position yourself. (Create a parameter to the `draw()` function of `Box` so you can scale on the fly).
* Create another `ArrayList` of `Line`s to hold a cube.
* Keep track of the scaling factor, when it crosses 0, swap the shapes!
