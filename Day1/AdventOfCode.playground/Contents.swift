import UIKit

let fileURL = Bundle.main.url(forResource: "Input", withExtension: "txt")
let inputString = try String(contentsOf: fileURL!, encoding: String.Encoding.utf8)

//let inputValues = inputString.components(separatedBy: NSCharacterSet.newlines)
//or
var inputValues: [Int] = []
inputString.enumerateLines { (line, stop) -> () in
    if let val = Int(line) {
        inputValues.append(val)
    }
}

var prevSumValues: [Int : Bool] = [:]
var sum: Int = 0
var foundIt = false

while foundIt == false {
    for nextVal in inputValues {
        sum += nextVal
        if (prevSumValues[sum] == true) {
            foundIt = true
            sum
            break
        }
        prevSumValues[sum] = true
    }
}


