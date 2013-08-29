proc main(max: int64) =
    var max: int64 = max
    var num: int64 = 2

    while num * num < max:
        while max mod num == 0:
            max = max div num
        inc(num)

    echo($max)


main(600851475143)
