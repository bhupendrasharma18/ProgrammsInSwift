
func removeDuplicatesFromSortedArray(arr: inout [Int]) -> [Int] {
    var iterator = 1, index = 0
    if arr.count <= 1 {
        return arr
    }
    while iterator < arr.count {
        if arr[index] == arr[iterator] {
            arr.remove(at: iterator)
        }
        else {
            index = iterator
            iterator += 1
        }
    }
    return arr
}

var arr = [1, 2, 6, 6, 5, 8]
print(removeDuplicatesFromSortedArray(arr: &arr))
