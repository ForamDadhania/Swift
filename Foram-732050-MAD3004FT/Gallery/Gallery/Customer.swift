//
//  Customer.swift
//  Gallery
//
//  Created by MacStudent on 2018-07-31.
//  Copyright © 2018 MacStudent. All rights reserved.
//

import Foundation
class Customer{
     var customerID: String?
     var name : String?
     var address : String?
     var contactNo : String?
     var password : String?
    
    
    var CustomerID : String?{
        get { return self.customerID }
        set { self.customerID = newValue }
    }
    var Name : String?{
        get { return self.name }
        set { self.name = newValue }
    }
    var Address : String?{
        get { return self.address }
        set { self.address = newValue }
    }
    var ContactNo : String?{
        get { return self.contactNo }
        set { self.contactNo = newValue}
    }
    var Password : String?{
        get { return self.password }
        set { self.password = newValue}
    }
    
    
    
    init(){
        self.customerID = ""
        self.name = ""
        self.address = ""
        self.contactNo = ""
        self.password = ""
    }
    
    init(customerID: String, name: String, address: String, contactNo: String, password: String){
        self.customerID = customerID
        self.name = name
        self.address = address
        self.contactNo = contactNo
        self.password = password
    }
    
    func displayData() -> String{
        var returnData = ""
        
        if self.customerID != nil{
            returnData += " Customer ID : " + self.customerID!
        }
        if self.name != nil{
            returnData += "\n Customer Name : " + self.name!
        }
        if self.address != nil{
            returnData += "\n Customer Address : " + self.address!
        }
        if self.contactNo != nil{
            returnData += "\n Contact Number : " + self.contactNo!
        }
        if self.password != nil{
            returnData += "\n Password : " + self.password!
        }
      
        return returnData
    }
        func registerUser(){
            print("Enter Customer ID : ")
            self.customerID = readLine()!
            print("Enter Customer Name : ")
            self.name = readLine()!
            print("Enter Customer Address : ")
            self.address = readLine()!
            print("Enter Contact number : ")
            self.contactNo = readLine()!
            print("Enter Password : ")
            self.password = readLine()!
        }
    }
    
    
    

