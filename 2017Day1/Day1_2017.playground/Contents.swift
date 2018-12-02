import UIKit

let fileURL = Bundle.main.url(forResource: "Input", withExtension: "txt")
let inputString = try String(contentsOf: fileURL!, encoding: String.Encoding.utf8)

//let inputValues = inputString.components(separatedBy: NSCharacterSet.newlines)
//or
//var inputValues: [Int] = []
//inputString.enumerateLines { (line, stop) -> () in
//    if let val = Int(line) {
//        inputValues.append(val)
//    }
//}

var values = Array(inputString)
values.removeLast()
var sum: Int = 0
let half_size = values.count / 2

for (index,val) in values.enumerated() {
    let compareIndex = (index + half_size) % values.count
    let compareVal = values[compareIndex]
    if (compareVal == val) ,let intVal = Int(String(compareVal)) {
        sum += intVal
    }
}
print(sum)


