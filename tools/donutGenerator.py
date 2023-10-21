import math
import sys


def printcircle(r, buffer, buffer_size, c):
    outp = 0
    center = buffer_size // 2
    centery = buffer_size // 4
    for y in range(center):
        for x in range(buffer_size):
            if math.sqrt((x - center) ** 2 + ((y - centery) * (y - centery)) * 4) < r:
                buffer[x + buffer_size * y] = c
                outp += 1
    return outp


argv = sys.argv

inside_r = 0
outside_r = 0

if len(argv) < 2 or len(argv) > 3:
    print("Error 0: Not enough or too many arguments")
    print("\nUsage:\n")
    print(
        "python3 tools/donutGenerator.py [characters]\n   Generates donut with min of [characters] characters\n"
    )
    print(
        "python3 tools/donutGenerator.py [outside_r] [inside_r]\n   Generates donut with outer radius [outside_r] and inner radius [inside_r]\n"
    )
elif len(argv) == 2:
    A = int(argv[1])

    outside_r = int(math.sqrt((2 * A) / (0.84 * math.pi))) + 1
    inside_r = int(outside_r * 0.4)

    print(f"Outer radius:\t\t\t{outside_r}\nInner radius:\t\t\t{inside_r}\n")

elif len(argv) == 3:
    outside_r = int(argv[1])
    inside_r = int(argv[2])

buffer = [" "] * (outside_r * outside_r * 2)
character_amount = printcircle(outside_r, buffer, outside_r * 2, ".")
character_amount -= printcircle(inside_r, buffer, outside_r * 2, " ")

for y in range(outside_r):
    for x in range(outside_r * 2):
        print(buffer[x + y * 2 * outside_r], end="")
    print()

print(f"\nCharacter count: {character_amount}")
