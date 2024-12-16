import UIKit

func linearSearch(_ array: [Int], _ target: Int) -> Bool {
    for number in array {
        if number == target {
            return true
        }
    }
    return false
}






        linearSearch([1,4,5,6,7,8,9,11,24,45,68], 1)




// O(1): Constant Time

func getFirstElement(from array: [Int]) -> Int? {
    return array.first // Always takes the same amount of time to return the value
}

// O(n): Linear Time

func findElement(in array: [Int], target: Int) -> Bool {
    for number in array { // Checks each element one by one.
        if number == target {
            return true
        }
    }
    return false
}


// O(log n)
func binarySearch(in sortedList: [Int], target: Int) -> Bool {
    var low = 0
    var high = sortedList.count - 1

    while low <= high {
        let mid = (low + high) / 2
        if sortedList[mid] == target {
            return true
        } else if sortedList[mid] < target {
            low = mid + 1
        } else {
            high = mid - 1
        }
    }
    return false
}

// O(n log n) Linearithmic Time
func mergeSort(_ array: [Int]) -> [Int] {
    guard array.count > 1 else { return array } // Base case

    let middle = array.count / 2
    let left = mergeSort(Array(array[..<middle]))
    let right = mergeSort(Array(array[middle...]))

    return merge(left, right)
}

func merge(_ left: [Int], _ right: [Int]) -> [Int] {
    var result: [Int] = []
    var leftIndex = 0, rightIndex = 0

    while leftIndex < left.count && rightIndex < right.count {
        if left[leftIndex] < right[rightIndex] {
            result.append(left[leftIndex])
            leftIndex += 1
        } else {
            result.append(right[rightIndex])
            rightIndex += 1
        }
    }
    return result + left[leftIndex...] + right[rightIndex...]
}

// O(n²) Quadratic Time
func printAllPairs(from array: [Int]) {
    for i in 0..<array.count {
        for j in 0..<array.count {
            print("(\(array[i]), \(array[j]))") // Prints every pair of elements.
        }
    }
}

// O(2ⁿ) Exponential Time
func fibonacci(_ n: Int) -> Int {
    if n <= 1 {
        return n
    }
    return fibonacci(n - 1) + fibonacci(n - 2)
}

// O(n!): Factorial Time
func permutations(of list: [Int]) -> [[Int]] {
    guard list.count > 0 else { return [[]] }
    var result: [[Int]] = []

    for i in 0..<list.count {
        let remaining = Array(list[..<i] + list[(i+1)...])
        let subPermutations = permutations(of: remaining)
        for perm in subPermutations {
            result.append([list[i]] + perm)
        }
    }
    return result
}

