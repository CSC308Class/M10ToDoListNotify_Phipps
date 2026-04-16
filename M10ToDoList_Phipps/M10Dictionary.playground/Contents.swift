import UIKit

/*
 Arrays:
 Stores Multiple Values Same Data Types
 In Order
 [Int?]
 [Int]?
 */
var arr: [Int]? = [1,2,3]
//print(1,2,3)
arr?.first
arr?.last
arr?[0]
arr?[1]
//arr[100]
//Add
arr?.append(4)
arr?.insert(4, at: 4)
arr?[1] = 100
print(arr)
//Remove
//arr.remove(at:1)
//arr.removeFirst()
//arr.removeLast()
//arr.removeAll()
//print(arr)
/*
 Dictionary:
 Stores Key-Value Pairs
 Same Data Types
 No Order
 [String?:String]
 [String:String?]
 [String:String]?
 */
var dict: [String: String]? = ["one":"1", "two":"2", "three":"3"] //key:value
print(dict)
dict?.first
dict?["one"]
dict?["four"] //return optional nil
dict?["four", default: "4"]
//insert
dict?.updateValue("5", forKey: "five") //value, key
//update
dict?.updateValue("05", forKey: "five") //value, key
print(dict)

dict?["six"] = "6"
print(dict)

//Remove
dict?.removeValue(forKey: "one")
//dict.removeAll()
dict?["two"] = nil //remove "two" from the dictionary
dict?["two"]?.count //optional chaining
let t = dict?["two"]
t?.count
print(dict)
