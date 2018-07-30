//
//  Reservation.swift
//  AirlineReservation
//
//  Created by MacStudent on 2018-07-28.
//  Copyright © 2018 MacStudent. All rights reserved.
//

import Foundation
typealias flightDetail = (flightID: Int, flight: Flight)

class Reservation: Flight{
    private var reserveID : Int
   // private var reservePID : String?
    private var reserveFlight : [flightDetail]
    private var reserveDate : Date
   // private var reserveSeatNo : String?
    private var reserveStatus : ReservationStatus?
    private var reserveMealType : Meal?
    private var dataHelper = DataHelper()
    
    var ReserveID : Int{
        get { return self.reserveID }
        set { self.reserveID = newValue}
    }
    var ReserveDate : Date{
        get { return self.reserveDate }
        set { self.reserveDate = newValue}
    }
    var ReserveStatus : ReservationStatus?{
        get { return self.reserveStatus ?? ReservationStatus.Noreservation }
        set {self.reserveStatus = newValue}
    }
    
    
    //default initializer
    override init(){
        self.reserveID = 0
        self.reserveFlight = []
       // self.reserveFID = ""
        self.reserveDate = DateFormatter().date(from: "")!
       // self.reserveSeatNo = ""
        self.reserveStatus = ReservationStatus.Noreservation
        self.reserveMealType = Meal.Nofood
        super.init()
    }
    
    override func displayData() -> String {
        var returnData = ""
        
        returnData += "\n Reservation ID : \(self.ReserveID ?? 0)"
        returnData += "\n Reservation Date : \(self.ReserveDate)"
        returnData += "\n Reservation Status : \(self.ReserveStatus ?? ReservationStatus.Noreservation) "
    return returnData
    
    }
    
    func addReservation(){
        dataHelper.displayFlights()
        print("Please enter the flight IF to choose any flight : ")
        let selectedFlightID : Int = (Int)(readLine()!)!
        
        if let selectedFlight = dataHelper.searchFlight(flightID: selectedFlightID){
            self.ReserveID = selectedFlightID
            self.ReserveDate = Date()
            
            self.reserveFlight += [(flightID: selectedFlightID, flight: selectedFlight)]
            self.ReserveStatus = ReservationStatus.Confirmed

        }else{
            print("No such flight")
    }
    }
   
    func cancleReservation(){
         
        if !reserveFlight.isEmpty {
            print("Check out your flight details \n \(self.displayData())")
            print("Enter Flight ID to cancle the reservation : ")
            let selectedFlightID : Int = (Int)(readLine()!)!
            var flightIndex = -1
            for(index, flights) in
                self.reserveFlight.enumerated(){
                    if(flights.flightID == selectedFlightID){
                        flightIndex = index
                    }
            }
            
            if flightIndex != -1 {
                self.reserveFlight.remove(at: flightIndex)
                print("Your Reservation is Cancelled")
            }
        }else{
            print("You have no seat reserved")
        }
        
    }
    
    
    }

