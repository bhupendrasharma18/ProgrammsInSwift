
func duplicateZeroes(arr: inout [Int]) {
    var index = 0
    while index < arr.count {
        if arr[index] == 0 {
            if index + 1 < arr.count {
                arr.insert(0, at: index + 1)
                arr.removeLast()
                index += 1
            }
        }
        index += 1
    }
    print(arr)
}

var arr = [1,0,2,3,0,4,5,0]
duplicateZeroes(arr: &arr)
