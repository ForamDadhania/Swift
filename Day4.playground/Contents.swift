//: Playground - noun: a place where people can play

import UIKit

var snackItems = [String]()
var items = ["Tornado potato","Shaved Ice","Donuts","Ice creams","French fries"]
var snacks : [String]
snacks = ["Tornado potato","Shaved Ice","Donuts","Ice creams","French fries"]
print("Snacks : \(snacks)")
for snack in snacks {
    print("each day = \(snack)")
}

for snack in 0..<snacks.count{
    print("New day = \(snacks[snack])")
}

for snack in snacks[...2]{
    
    print("New ay one sided range = \(snack)")
}

for (index, value) in snacks.enumerated(){
    print("index = \(index) value = \(value)")
}

var numbers = Array(repeating: 1, count: 5)
print("numbers \(numbers)")

numbers[2] = 25
print("numbers = \(numbers)")

var alphabates = Array(repeating: 0, count: 3)
print("alphabates = \(alphabates)")
alphabates[2] = 3
print("alphabates = \(alphabates)")

var merge = numbers + alphabates
merge[5] = 23
print("mergring both = \(merge)")

merge[3] = numbers[1] + alphabates[2]
print(merge)


var grocery = ["Apples","Oranges"]
grocery += ["milk","coffee","vegetables"]
grocery.append("Juice")
print("Grocery = \(grocery)")

grocery[1...3] = ["bread","yogurt","chips","Oil"]//will replace the elements
print("grocery = \(grocery)")

grocery.remove(at: 3)
grocery.removeLast()
grocery.removeFirst()

grocery.insert("cookies", at: 1)//add the items
print("Grocery = \(grocery)")


grocery.removeAll()
if grocery.isEmpty{
    print("Everything settled")
}else{
    print("Put groceries in place")
}

var  hawking = [Any]()
hawking.append("Theory of Everything")
hawking.append(3.0)
hawking.append(1)
print("Hawking = \(hawking)")

//set:no duplicate values,hashable codes
var languages = Set<String>()
languages.insert("Gujarati")
languages.insert("Hindi")
languages.insert("English")
languages.insert("German")
languages.insert("Sanskrit")
print("Languages = \(languages)")

languages.remove("Sanskrit")
print("German is available in class = \(languages.contains("German"))")
print("Sanskrit is available in class = \(languages.contains("Sanskrit"))")

for lang in languages.sorted(){
    print("language : \(lang)")
}

let motherToungue : Set = ["Gujarati","Punjabi","Urdu","Hindi","Telugu","Marathi"]
print("MotherToungue : \(motherToungue)")
print("Union : \(languages.union(motherToungue).sorted())")
print("Intersection : \(languages.intersection(motherToungue).sorted())")

print("Symmetric difference = \(languages.symmetricDifference(motherToungue).sorted())")
print("Subtracting 1-2 = \(languages.subtracting(motherToungue).sorted())")
print("Subtractng 2-1 = \(motherToungue.subtracting(languages).sorted())")

var commonLangs = languages.subtracting(motherToungue).sorted()
print("Common Languages \(commonLangs)")
print(languages.isSubset(of: commonLangs))
print(languages.isSuperset(of: commonLangs))
print(motherToungue.isDisjoint(with: languages))

//Dictionary
var appreciation = [String : String] ()
appreciation["Day 1"] = "Potato"
appreciation["Day 3"] = "Donuts"
print("appretiation : \(appreciation)")


print("\(appreciation.count) appreciation days")

appreciation = [:]
if appreciation.isEmpty{
    print("No appretiation 😢... just studies")
}

appreciation["Day 2"] = "Shaved Ice"
print("appreciation = \(appreciation)")

let oldItem = appreciation.updateValue("Gola", forKey: "Day 2")
print("appreciation = \(appreciation)")
print("Old Items = \(oldItem)")

if let day4Item = appreciation["Day 4"]{
    print("day4Item \(day4Item)")
}else{
    print("Nothing to print")
}

appreciation["Day 4"] = "Ice Cream"
if let removeValue = appreciation.removeValue(forKey: "Day 3"){
    print("\(removeValue) are no longer available")
    print("appreciation = \(appreciation)")
}else{
    print("Nothing found or day 3")
}

appreciation["Day 2"] = nil
print("appreciation \(appreciation)")

for app in appreciation.keys{
    
    print("app key = \(app)")
}

for app in appreciation.values{
    
    print("app values = \(app)")
}

for (key,value) in appreciation{
    
    print("key = \(key) value = \(value)")
}

var flight = [String : Any]()
flight["number"] = "9W 234" as Any//type cast it
flight["Duration"] = 16 as Any
flight["cost"] = 1000.67 as Any

print("flight =  \(flight)")


