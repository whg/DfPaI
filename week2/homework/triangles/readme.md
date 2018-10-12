# Facing Triangles

Rotate each triangle so it faces towards the mouse.

![final](https://raw.githubusercontent.com/whg/DfPaI/master/week2/homework/triangles/triangles.png)

#### Tips

Create a function in the `Triangle` class that looks like this:

```processing
void faceTowards(float x, float y) {

}
```

In that function set `rotation` to be the angle to the mouse. You might find it useful to use `atan2()`, check it out in the [Processing reference](https://processing.org/reference/atan2_.html).

Call `faceTowards()` when before you `draw()` each `Triangle`.
