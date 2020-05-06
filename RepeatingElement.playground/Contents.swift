var array = [2, 6, 4, 3, 2, 5]
//var arr: [Int] = [3, 1, 3, 4, 5, 4]
func findRepeatingElement(arr: inout [Int]) {
    for i in 0..<arr.count {
        if (arr[abs(arr[i]) - 1] > 0) {
            arr[abs(arr[i]) - 1] = -arr[abs(arr[i]) - 1]
        }
        else {
            print("repeating element is \(abs(arr[i]))")
        }
    }

    for i in 0..<arr.count {
        if arr[i] > 0 {
            print("missing element is \(i+1)")
        }
    }
}

findRepeatingElement(arr: &array)
