

func findEvenDigitsCount(arr: [Int]) -> Int {
    var count = 0
    for number in arr {
        if numberLength(num: number) % 2 == 0 {
            count += 1
        }
    }
    return count
}

func numberLength(num: Int) -> Int {
    var length = 0
    var number = num
    if number == 0 {
        length = 1
    }
    else {
        while number > 0 {
            length += 1
            number = number/10
        }
    }
    return length
}

print(findEvenDigitsCount(arr: [12, 123, 4324, 2, 14]))

