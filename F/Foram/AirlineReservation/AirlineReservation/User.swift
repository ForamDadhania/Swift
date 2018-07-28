//
//  User.swift
//  AirlineReservation
//
//  Created by MacStudent on 2018-07-28.
//  Copyright © 2018 MacStudent. All rights reserved.
//

import Foundation
class Login{
    private var userName : String?
    private var password : String?
    
    init(){
        self.userName = ""
        self.password = ""
    }
    
    init(userName : String, password : String){
        self.userName = "Foram"
        self.password = "123"
    }
    
    var Username : String?{
        get{ return self.userName }
        set{ self.userName = newValue }
    }
    
    var Password : String?{
        get{ return self.password }
        set{ self.password = newValue }
    }
    
    func displayData() -> String{
        var returnData = ""
        
        if self.userName != nil{
            returnData += " Username : " + self.userName!
        }
        
        if self.password != nil{
            returnData += " Password : " + self.password!
        }
        return returnData
        
    }
    func userData(){
        print("Username : ")
        self.userName = readLine()!
        if userName != self.userName {
            print("Please Enter a valid Username")
        }else {
            print("Bravo")
        }
        print("Password : ")
        self.password = readLine()!
        if password != self.password{
            print("Please Enter a valid Password")
        }else {
            print("Bravo")
        }
    }
    
}
