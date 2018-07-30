//
//  Customer.swift
//  New
//
//  Created by MacStudent on 2018-07-28.
//  Copyright © 2018 MacStudent. All rights reserved.
//

import Foundation
class Customer : IDisplay {
    var customerID : String?
    private var customerName : String?
    private var address : String?
    private var email : String?
    private var creditCardInfo : String?
    private var shippingInfo : String?
    
    //stored property
    var CustomerID : String?{
        get{ return self.customerID }
        set{ self.customerID = newValue }
    }
    
    var CustomerName : String?{
        get{ return self.customerName }
        set{ self.customerName = newValue }
    }
    
    var Email : String?{
        get { return self.email}
        set {self.email = newValue}
    }
    var Address : String?{
        get { return self.address}
        set {self.address = newValue}
    }
    var CreditCardInfo : String?{
        get { return self.creditCardInfo}
        set {self.creditCardInfo = newValue}
    }
    var ShippingInfo : String?{
        get { return self.shippingInfo}
        set {self.shippingInfo = newValue}
    }
    
    //default initializer / constructor
    init(){
        self.customerID = ""
        self.customerName = ""
        self.email = ""
        self.address = ""
        self.creditCardInfo = ""
        self.shippingInfo = ""
    }
    
    //parameterized initializer
    init(customerID: String, customerName : String, email : String, address : String, creditCardInfo : String, shippingInfo : String){
        
        self.customerID = customerID
        self.customerName = customerName
        self.email = email
        self.address = address
        self.creditCardInfo = creditCardInfo
        self.shippingInfo = shippingInfo
    }
    
    func displayData() -> String{
        var returnData = ""
        
        if self.customerID != nil{
            returnData += " Customer ID : " + self.customerID!
        }
        if self.customerName != nil{
            returnData += "\n Customer Name : " + self.customerName!
        }
        if self.email != nil{
            returnData += "\n Customer Email : " + self.email!
        }
        if self.address != nil{
            returnData += "\n Customer Address : " + self.address!
        }
        if self.creditCardInfo != nil{
            returnData += "\n Customer Credit Card Info : " + self.creditCardInfo!
        }
        if self.shippingInfo != nil{
            returnData += "\n Customer Shipping Info : " + self.shippingInfo!
        }
        return returnData
    }
    
    func registerUser(){
        print("Enter Customer ID : ")
        self.customerID = readLine()!
        print("Enter Customer Name : ")
        self.customerName = readLine()!
        print("Enter Customer Email : ")
        self.email = readLine()!
        print("Enter Customer Address : ")
        self.address = readLine()!
        print("Enter Customer Credit Card Number : ")
        self.creditCardInfo = readLine()!
        print("Enter Customer Shipping Instructions : ")
        self.shippingInfo = readLine()!
    }
}

