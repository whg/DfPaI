
# Week 1

Do the exercises in:
* BouncingBalls
* gradient
* Grid

## What's printed and why?

### A

```processing

int a = 2;

void go() {
  a++;
}

void setup() {
  go();
  println(a);
}

```

### B

```processing
int x = 0;

void go(int x) {
  x++;
}

void setup() {
  go(x);
  println(x);
}
```

### C

*put your answer here*

```processing
class Thing {
  int a;
}

void go(Thing t) {
  t.a++;
}

void setup() {
  Thing thing = new Thing();
  thing.a = 2;
  
  go(thing);

  println(thing.a);
}
```
*put your answer here*
