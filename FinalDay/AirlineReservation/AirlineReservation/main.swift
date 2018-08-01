//
//  main.swift
//  AirlineReservation
//
//  Created by MacStudent on 2018-08-01.
//  Copyright © 2018 MacStudent. All rights reserved.
//

import Foundation
//var sea = Seats()
//print(sea.busclass())

//var flight = Flight()
//print(flight.display())
//print(flight.displayData())
//var login = User()
//print(login.userData())

//var choice = 1
//let dataHelper = DataHelper()
//
//var reserve = Reservation()
//var seat = Seats()
//var passa = Passanger()
//
//while choice != 7 {
//    print("\n----Where do you wannna fly  off to!----")
//    print("\t 1 : Browse Flights ")
//    print("\t 2 : Personal Info")
//    print("\t 3 : Add Flights ")
//    print("\t 4 : Select Seats")
//    print("\t 5 : Show Flights ")
//    print("\t 6 : Update Flights ")
//    print("\t 7 : Cancel Flights ")
//    print("\t 8 : Exit ")
//    print("-----------------------------------------")
//    print("Enter you choice please : ")
//    choice = (Int)(readLine()!)!
//
//    switch choice{
//    case 1:
//        dataHelper.displayFlights()
//    case 2:
//        passa.passengerData()
//    case 3:
//        reserve.addReservation()
//    case 4:
//        seat.busclass()
//    case 5:
//        print(reserve.displayData())
//        //    case 6:
//    //        order.updateOrder()
//    case 7:
//        reserve.cancleReservation()
//    case 8:
//        exit(0)
//    default:
//        print("Please enter valid menu option.")
//    }
//}
print("choose your departure")
for flyto in AirportList.allCases{
    print("Enter \(flyto.rawValue) for \(flyto)")
}
var src = (Int)(readLine()!)!


print("choose your arrival")
for flyto in AirportList.allCases{
    print("Enter \(flyto.rawValue) for \(flyto)")
}
var dst = (Int)(readLine()!)!

var flightprint:[Flight]=DataHelper().flightFr(depart: AirportList(rawValue: src)!, arrive: AirportList(rawValue: dst)!)
for flight in  flightprint{
    print(flight.displayData())
}




