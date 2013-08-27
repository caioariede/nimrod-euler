iterator countup(a, b: int): int {.noSideEffect.} =
    var res = a
    while res < b:
        if res mod 3 == 0 or res mod 5 == 0:
            yield res
        inc(res)


proc main(max: int): void =
    var
        total: int

    for num in countup(1, max):
        total += num

    echo($total)


main(1000)
