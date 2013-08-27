iterator fib(max: int): int {.noSideEffect.} =
    var
        x: int = 0
        y: int = 1
        r: int

    while y < max:
        r = x
        x = y
        y = y + r
        if x mod 2 == 0:
            yield x


proc main(max: int): void =
    var
        total: int

    for num in fib(max):
        total += num

    echo($total)


main(4000000)
