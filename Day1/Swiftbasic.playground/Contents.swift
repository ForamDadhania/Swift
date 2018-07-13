//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

print("value of str",str)

var number = 10
print("number = " , number)

//str = 20

print("Anu","Sminran","prabhjeet",separator: " J ")

var sum = number + 20
print("sum of \(number) and 20 is \(sum)")

//string interplation

print("😇","🤓","😯","🤠",separator:"👉🏻")
 var monkey = "🙈"
print("monkey: \(monkey)")

var temp : Int
temp = 34
print("tempertaure: \(temp) cloudy")

if temp < 10{
    print("cold")
}
else if (temp == 30) {
    print("hot")
} else{
    print("heat alert")
}


let pi : Float = 3.1415

print("pi = \(pi)")

//pi = 2.34

var task : String?


task = "writing"

if task == nil{
 print("Yay..not task..just fun")
}else {
    print(task!)
}

var taskList : [String]

taskList = ["Singing","dancing","writing","eating","drawing"]
for activity in taskList{
    print("perform \(activity)")
}

var itr = 1
while (itr < 5) {
    print("itr : \(itr)")
    itr = itr + 1
}


itr = 70
repeat{
    print("itr : \(itr)")
    itr = itr + 10;
}
    while (itr<=30)

itr = 8

switch itr  {
    
case 1...9:
    print("one to nine")
    fallthrough
    
case 20:
    print("twenty")
    
case 30,40,50:
    print("thirty or forty or fifty")
    
case 60...100:
    print("sixty to hundred")
default:
    print("unreachable")
}






