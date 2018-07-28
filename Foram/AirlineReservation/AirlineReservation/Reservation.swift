//
//  Reservation.swift
//  AirlineReservation
//
//  Created by MacStudent on 2018-07-28.
//  Copyright © 2018 MacStudent. All rights reserved.
//

import Foundation
class Reservation{
    private var reserveID : Int?
    private var reserveDesc : String?
    private var reservePID : String?
    private var reserveFID : String?
    private var reserveDate : String?
    private var reserveSeatNo : String?
    private var reserveStatus : String?
    private var reserveMealType : String?
    
    //default initializer
    init(){
        self.reserveID = 0
        self.reserveDesc = ""
        self.reservePID = ""
        self.reserveFID = ""
        self.reserveDate = ""
        self.reserveSeatNo = ""
        self.reserveStatus = ""
        self.reserveMealType = ""
    }
    
    //parameterized initializer
    init(reserveID: Int, reserveDesc: String, reservePID: String, reserveFID: String, reserveDate: String, reserveSeatNo: String, reserveStatus: String, reserveMealType: String){
        
        self.reserveID = reserveID
        self.reserveDesc = reserveDesc
        self.reservePID = reservePID
        self.reserveFID = reserveFID
        self.reserveDate = reserveDate
        self.reserveSeatNo = reserveSeatNo
        self.reserveStatus = reserveStatus
        self.reserveMealType = reserveMealType
    }
    
    //stored property
    var CustomerID : Int? {
        get{ return self.customerID}
        set{ self.customerID = newValue}
    }
    var CustomerName : String?{
        get{return self.customerName}
        set{self.customerName = newValue}
    }
    var Address : String?{
        get{return self.address}
        set{self.address = newValue}
    }
    var Email : String?{
        get{return self.email}
        set{self.email = newValue}
    }
    var CreditCardInfo : String?{
        get{return self.creditCardInfo}
        set{self.creditCardInfo = newValue}
    }
    var ShippingInfo : String?{
        get{return self.shippingInfo}
        set{self.shippingInfo = newValue}
    }
    
    func displayData() -> String{
        var returnData = ""
        
        if self.customerID != nil {
            returnData += "\n Customer ID : \(self.customerID ?? 0)"
        }
        
        if self.customerName != nil {
            returnData += "\n Customer Name : \(self.customerName ?? "Unknown")"
        }
        if self.address != nil {
            returnData += "\n Customer address : \(self.address ?? "Unknown")"
        }
        if self.email != nil {
            returnData += "\n Customer Email : \(self.email ?? "email@mad.com")"
        }
        if self.creditCardInfo != nil {
            returnData += "\n Customer Credit Card Info : \(self.creditCardInfo ?? "4520-0100-0000-0000")"
        }
        if self.shippingInfo != nil {
            returnData += "\n Customer Shipping Info : \(self.shippingInfo ?? "Shipping Instruction")"
        }
        return returnData
    }
    
    func registerUser(){
        print("Enter Customer ID : ")
        self.customerID = (Int)(readLine()!)
        print("Enter Customer Name : ")
        self.customerName = readLine()!
        print("Enter Customer Address : ")
        self.address = readLine()!
        print("Enter Customer Email : ")
        self.email = readLine()!
        print("Enter Customer CreditCardInfo : ")
        self.creditCardInfo = readLine()!
        print("Enter Customer Shipping Info : ")
        self.shippingInfo = readLine()!
        
    }
}
