
func transpose(matrix: [[Int]]) -> [[Int]] {
    let rows = matrix.count
    let columns = matrix.first?.count ?? 1
    var output = Array.init(repeating: Array.init(repeating: 0, count: rows), count: columns)

    for i in 0..<columns {
        for j in 0..<rows {
            output[i][j] = matrix[j][i]
        }
    }

    return output
}

var mat = [[1, 2, 11], [3, 4, 22], [5, 6, 33]]
transpose(matrix: mat)
