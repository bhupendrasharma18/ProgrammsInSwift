
func palindromeCounts(str: String) -> Int {
    var count = 0
    for i in 0..<str.count-2 {
        for j in 2...str.count {
//            print("\(i) \(j)")
            if i < j - 1 {
                let lowerbound = str.index(str.startIndex, offsetBy: i)
                let upperbound = str.index(str.endIndex, offsetBy: -(str.count - j))
                if lowerbound < upperbound {
                    let range: Range = lowerbound..<upperbound
                    let substring = String(str[range])
//                    print(substring)
                    if isPalindrome(str: substring) {
//                        print(substring)
                        count += 1
                    }
                }
            }
        }
    }
    return count
}

func isPalindrome(str: String) -> Bool {
    let reverse = String.init(str.reversed())
    if reverse == str {
        return true
    }
    return false
}

print(palindromeCounts(str: "abbaeae"))
