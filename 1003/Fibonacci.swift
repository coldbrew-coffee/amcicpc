#!/usr/bin/swift

// The fibonacci sequence
// Fn-2 + Fn-1 = Fn
func lastTwoNumbersOfFibonacciSequence(nth: Int) -> (Int, Int) {
    var n_2 = 0
    var n_1 = 1
    var n = 0
    for _ in 1...nth {
        n_2 = n_1
        n_1 = n
        n = n_2 + n_1
    }
    return (n_1, n)
}

func displayNumberOfFunctionsCalled(testCase: String) {
    let number = Int(testCase)!
    if number == 0 {
        print("1 0")
    } else {
        let lastTwoNumbers = lastTwoNumbersOfFibonacciSequence(nth: number)
        print("\(lastTwoNumbers.0) \(lastTwoNumbers.1)")
    }
}

if let input = readLine() {
    let numberOfTestCases = Int(input)!
    for _ in 1...numberOfTestCases {
        if let testCase = readLine() {
            displayNumberOfFunctionsCalled(testCase: testCase)
        }
    }
}
