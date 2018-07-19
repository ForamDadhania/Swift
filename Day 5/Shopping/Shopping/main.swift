//
//  main.swift
//  Shopping
//
//  Created by MacStudent on 2018-07-19.
//  Copyright © 2018 MacStudent. All rights reserved.
//

import Foundation

print("Hello, World!")

var tejas = Customer()

print(tejas.displayData())

var jatinder = Customer(customerID: 101, customerName: "Jatinder", address: "Attmar Dr. Brampton", email: "Jatinder@mad.com", creditCardInfo: "4520-0100-1234-5678", shippingInfo: "Ship at lambton college between 1PM to 5PM")


print("\(jatinder.displayData())")
tejas.CustomerID = 102
tejas.CustomerName = "Tejas"
tejas.Address = "Oshawa"
tejas.Email = "Tejas@mad.com"
tejas.CreditCardInfo = "1234-5678-9000-9876"
tejas.ShippingInfo = "Dont deliver between 1 p.m. to 5 p.m."
print(tejas.displayData())

var navdeep = Customer()
navdeep.registerUser()
print(navdeep.displayData())






