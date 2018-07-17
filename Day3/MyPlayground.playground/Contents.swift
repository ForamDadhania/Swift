//: Playground - noun: a place where people can play

import UIKit

func greet(){
    
    print("greetings..")
}

greet()

func greet(message: String){
    
    print("\(message)")
}
greet(message: "Messanger")

func add(n1: Int, n2: Int){
    print("\(n1) + \(n2) = \(n1+n2)")
    
}

add(n1: 10, n2: 20)//sequence m,ust be followed

func add(n1: Int, _ n2: Int) -> Int {
    return (n1+n2)
}

var sum = add(n3: 10, n4: 20)


