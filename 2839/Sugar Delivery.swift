#!/usr/bin/swift

// Sugar Delivery
func displayNumberOfBags(testCase: String) {
    let weightOfSugar = Int(testCase)!
    let maximumNumberOfLargeBags = weightOfSugar / 5
    
    for numberOfLargeBags in stride(from: maximumNumberOfLargeBags, to: -1, by: -1) {
        let weightInLargeBags = numberOfLargeBags * 5
        let remainingWeight = weightOfSugar - weightInLargeBags
        let numberOfSmallBags = remainingWeight / 3
        let remainder = remainingWeight % 3
        
        if numberOfLargeBags == 0 && remainder != 0 {
            print("-1")
        }
        
        if remainder == 0 {
            print(numberOfLargeBags + numberOfSmallBags)
            break
        }
    }
}

if let input = readLine() {
    displayNumberOfBags(testCase: input)
}
