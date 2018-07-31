//
//  main.swift
//  Gallery
//
//  Created by MacStudent on 2018-07-31.
//  Copyright © 2018 MacStudent. All rights reserved.
//

import Foundation


print("Enter your customer ID: ")
var name = readLine()
//datahelper.ArtList[]
//if name != Art
//
//}

//datahelper.loadCustomerData()
//if name = datahelper.loadCustomerData(){
//    print("Enter your password")
//}
print("Enter your password: ")
var password = readLine()

var customer = Customer()
customer.registerUser()


var choice = 1
let dataHelper = DataHelper()
var purchase = Purchase()

while choice != 4{
    print("\n----What would you like to do today !----")
    print("\t 1 : Show Arts List ")
    print("\t 2 : Purchase Art ")
    print("\t 3 : Show Purchased Arts ")
    print("\t 4 : Exit ")
    print("-----------------------------------------")
    print("Enter you choice please : ")
    choice = (Int)(readLine()!)!

    switch choice{
    case 1:
        dataHelper.displayArts()
    case 2:
       purchase.addItem()
    case 3:
      print(purchase.displayData())
    case 4:
        exit(0)
    default:
        print("Please enter valid menu option.")
    }
}



