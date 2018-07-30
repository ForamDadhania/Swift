//
//  main.swift
//  AirlineReservation
//
//  Created by MacStudent on 2018-07-28.
//  Copyright © 2018 MacStudent. All rights reserved.
//

import Foundation


var choice = 1
let dataHelper = DataHelper()
var reserve = Reservation()
var passa = Passanger()

while choice != 7{
    print("\n----Where do you wannna fly  off to!----")
    print("\t 1 : Browse Flights ")
    print("\t 2 : Personal Info")
    print("\t 3 : Add Flights ")
    print("\t 4 : Show Flights ")
    print("\t 5 : Update Flights ")
    print("\t 6 : Cancel Flights ")
    print("\t 7 : Exit ")
    print("-----------------------------------------")
    print("Enter you choice please : ")
    choice = (Int)(readLine()!)!
    
    switch choice{
    case 1:
        dataHelper.displayFlights()
    case 2:
        passa.passengerData()
    case 3:
        reserve.addReservation()
    case 4:
        print(reserve.displayData())
        //    case 5:
    //        order.updateOrder()
    case 6:
        reserve.cancleReservation()
    case 7:
        exit(0)
    default:
        print("Please enter valid menu option.")
    }
}








