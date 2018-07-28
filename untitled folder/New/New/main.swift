//
//  main.swift
//  New
//
//  Created by MacStudent on 2018-07-28.
//  Copyright © 2018 MacStudent. All rights reserved.
//

import Foundation
var choice = 1
let dataHelper = DataHelper()
var order = Order()

while choice != 6{
    print("\n----What would you like to do today !----")
    print("\t 1 : Browse Products ")
    print("\t 2 : Add Order ")
    print("\t 3 : Show Order ")
    print("\t 4 : Update Order ")
    print("\t 5 : Cancel Order ")
    print("\t 6 : Exit ")
    print("-----------------------------------------")
    print("Enter you choice please : ")
    choice = (Int)(readLine()!)!
    
    switch choice{
    case 1:
        dataHelper.displayProducts()
    case 2:
        order.addOrder()
    case 3:
        print(order.displayData())
        //    case 4:
    //        order.updateOrder()
    case 5:
        order.cancelOrder()
    case 6:
        exit(0)
    default:
        print("Please enter valid menu option.")
    }
}



