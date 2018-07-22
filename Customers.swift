//
//  Customers.swift
//  WholeSaleManagement
//
//  Created by Macbook on 2017-06-10.
//  Copyright © 2017 Macbook. All rights reserved.
//

import Foundation


class Customer
{
    var customerId : Int
    var customerName : String
    var customerAddress : String
    var zipCode : Int
    var payment : String
    var paidAmt : Int
    var pendingAmt : Int
    var totalAmt : Int
    init(cid : Int, cname : String, adrss : String,zip : Int, paymnt : String, paid : Int,pending : Int , total : Int )
    {
        self.customerId = cid
        self.customerName = cname
        self.customerAddress = adrss
        self.zipCode = zip
        self.payment = paymnt
        self.paidAmt = paid
        self.pendingAmt = pending
        self.totalAmt = total
    }
    
    func getcustomerId() -> Int {
        return customerId
    }
    
    func getcustomerName() -> String {
        return customerName
    }
    
    func getcustomerAddress() -> String {
        return customerAddress
    }
    func getzipCode() -> Int {
        return zipCode
    }
    func getpayment() -> String{
        return payment
    }
    
    func getpaidAmt() -> Int{
        return paidAmt
    }
    func getpendingAmt() -> Int
    {
        return pendingAmt
        
    }
    func gettotalAmt()-> Int
    {
        return totalAmt
    }
}
