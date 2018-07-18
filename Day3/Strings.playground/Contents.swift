//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

var coordinates = (140,200)

switch coordinates {
case (0,0):
    print("Start of canvas")
case(100,100):
    print("End of canvas")
case(10,20):
    print("Center of canvas")
case(10,_):
    print("x axis")
case(_,20):
    print("y axis")
case (101...200,101...200):
    print("outside the canvas")
default:
    print("Canvas unavailable")
}

var range = 1...100
print(range)
print(range.contains(45))
print(range.contains(453))
print("Lowerbound",range.lowerBound)
print("upperbound",range.upperBound)

for itr in 0..<5{
    print("itr : \(itr)")
}

var friends = ["Simran", "Anu", "Aman", "Prabhjeet"]
var length = friends.count

for itr in 0..<length{
    print("Friends : \(friends[itr])")
}

for frnd in friends[1...]{
    print("====\(frnd)")
}

for frnd in friends[...2]{
    print("@@@\(frnd)")
}

for char in "Good😒"{
    print("character : \(char)")
}

var govinda = """
Answer to yesterday's question
what could you have been instead of being teacher?
you know about the answer.
Response:: I don't know.
"""

govinda += "I would be an Astronaut"
govinda.append(" Ohhh Really !!!🧐 \u{1F496}")
print(govinda)

var value = String()
//value = "too much"

if value.isEmpty{
    print("Value not available")
}else{
    print(value)
}

var day = "Saturday"
//Saturday_
print("startIndex : \(day[day.startIndex])")
//print("endIndex : \(day[day.endIndex])")

print("last character : \(day[day.index(before: day.endIndex)])")

print("second character : \(day[day.index(after: day.startIndex)])")

print("4th character : \(day[day.index(day.startIndex, offsetBy: 3)])")

print("3rd from last : \(day[day.index(day.endIndex,offsetBy: -3)])")

var index = day.index(of: "t") ?? day.startIndex
print("char t : \(day[index])")

for idx in day.indices{
    print("\(day[idx])", terminator: "_")
}
print()

for (idx,char) in day.enumerated(){
    print("Index : \(idx) Char : \(char)")
}

print(day.uppercased())
print(day.lowercased())

day.insert("!", at: day.endIndex)
print(day)

day.insert(contentsOf: " No class please", at: day.endIndex)
print(day)

var idx1 = day.index(of: "!") ?? day.endIndex
day.remove(at: idx1)
print(day)

idx1 = day.index(of: "N") ?? day.endIndex
var idx2 = day.index(of: "s") ?? day.endIndex
day.removeSubrange(idx1...idx2)
print(day)
//Saturday s please

day.removeAll()
print("day : ",day)

