#!/usr/bin/swift 

func position(of turret: [Int]) -> (Int, Int) {
    return (turret[0], turret[1])
}

func radius(of turret: [Int]) -> Double {
    return Double(turret[2])
}

func squared(_ number: Int) -> Double {
    return Double(number * number)
}

func abs(_ number: Int) -> Int {
    return number < 0 ? -number : number
}

func distanceBetweenTwoPoints(from: (x: Int, y: Int), to: (x: Int, y: Int)) -> Double {
    return (squared(from.x - to.x) + squared(from.y - to.y)).squareRoot()
}

func displayNumberofPoints(testCase: String) {
    let data = testCase.split(separator: " ").map { Int($0)! }
    let firstTurret = Array(data.prefix(upTo: 3))
    let secondTurret = Array(data.suffix(from: 3))
    
    let distance = distanceBetweenTwoPoints(from: position(of: firstTurret), to: position(of: secondTurret))
    let sumOfRadius = radius(of: firstTurret) + radius(of: secondTurret)
    let diffOfRadius = abs(radius(of: firstTurret) - radius(of: secondTurret))
    // When positions of two turrets match
    if distance == 0.0 {
        if (diffOfRadius == 0) {
            print("-1")
        } else {
            print("0")
        }
    }
        
    // When one turret's position is inside the other's raidus
    else if distance < radius(of: firstTurret) || distance < radius(of: secondTurret){
        if (distance > diffOfRadius) {
            print("2")
        } else if  (distance < diffOfRadius) {
            print("0")
        } else {
            print("1")
        }
    }
    
    // Neither conditions match
    else {
        if (distance > sumOfRadius) {
            print("0")
        } else if  (distance < sumOfRadius) {
            print("2")
        } else {
            print("1")
        }
    }
}

if let input = readLine() {
    let numberOfTestCases = Int(input)!
    for _ in 1...numberOfTestCases {
        if let testCase = readLine() {
            displayNumberofPoints(testCase: testCase)
        }
    }
}
