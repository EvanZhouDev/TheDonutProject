## donut_generator

`donut_generator` is a tool for creating a donut template made from periods to shape your code after.

### Compiling donut_generator

To compile `donut_generator`, enter the tool directory and compile it using `gcc` or another c compiler:
```bash
cd tools
gcc donut_generator.c -o donut_generator
# if you use another c compiler, use it
```

### Using donut_generator

#### Draw donut with minimum amount of characters

To make `donut_generator` generate a donut with a minimum amount of characters, provide that minimum as the first and only argument:
```bash
./donut_generator [character minimum]
```

Its output will consist of a calculated outer and inner radius, an estimated character amount, the donut itself and the actual character amount.  
For an example output, look [here](TODO).

Please note that the output of `donut_generator` will never generate less than the minimum character amount, but might generate more characters, which can be advantageous in case more characters are required due to the geometry of the donut or if you want to include comments.

#### Draw donut with specific outer and inner radius

To make `donut_generator` generate a donut with a specific outer and inner radius, provide those radii as arguments:
```bash
./donut_generator [outer radius] [inner radius]
```

Its output will consist of the donut and the amount of characters it contains.  
For an example output, look [here](TODO).

Please note that the radius will be halfed vertically so the donut looks round then viewed with a 1:2 font.

### donut_generator errors

#### Error 0: Not enough or too many arguments

You provided either too few (less than 1) or too many (more than 2) arguments.

##### Error message:

```
Error 0: Not enough or too many arguments

Usage:
 donut_generator [characters]            Generates a donut with a minimum of [characters] characters and a donut like ratio of inner and outer radius
 donut_generator [outside_r] [inside_r]  Generates a donut with an outer radius of [outside_r] and an inner radius of [inside_r]

All arguments passed to this program are expected to be unsigned base 10 integers
```

#### Undocumented errors

If `donut_generator` doesnt work or works in unexpected ways and shows no error message, please create an issue explaining how the program behaved and what input you provided when you caused that behavior.
