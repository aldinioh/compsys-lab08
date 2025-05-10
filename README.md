# compsys-lab08

## 8.2.2:

### 8.2.2(a) 

The way I would write it would be as follows:

`x >= 0 && x <= 4`

<br>

or specifically:

```rs
if x < 1 {
    // Do stuff
} else if x > 3 {
    // Do more stuff
} else {
    continue; // assuming we are already in some type of loop
}
```

### 8.2.2(b) 

for the first conditional statement (x < 1) we could use BLT and for x > 3 we can use BGT. 

### 8.8.2(c)

In the case x > 0, N would be set to 1, as the main idea of x > 0 conditional statement is to check if x is GREATER than 0. 

<br>

For x < 4, it would be overflow as it has gone past the desired range and therefore cause an overflow in BITSS



