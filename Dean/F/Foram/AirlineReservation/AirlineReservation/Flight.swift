//
//  Flight.swift
//  AirlineReservation
//
//  Created by MacStudent on 2018-07-28.
//  Copyright © 2018 MacStudent. All rights reserved.
//

import Foundation
class Flight : IDisplay
{
    
    var flightID : Int?
    var flightFrom : AirportList?
    var flightTo : AirportList?
    var flightAirlineID : AirlineList?
    //   var flightSchdate : Date?
    var flightClass : FlightClassList?
    //   var flightAirplaneID : String?
    //    private var flightPilotID : String?
   // var flightCost : Double?
    
    var FlightID : Int?
    {
        get{ return self.flightID}
        set{ self.flightID = newValue}
    }
    
    var FlightFrom : AirportList?
    {
        get{ return self.flightFrom}
        set{ self.flightFrom = newValue}
    }
    var FlightTo : AirportList?
    {
        get{ return self.flightTo}
        set{ self.flightTo = newValue}
    }
    var FlightAirlineID : AirlineList?
    {
        get{ return self.flightAirlineID}
        set{ self.flightAirlineID = newValue}
    }
    //        var FlightScheduleDate : Date?
    //        {
    //            get{ return self.FlightScheduleDate}
    //            set{ self.flightSchdate = newValue}
    //        }
    var FlightClass : FlightClassList?
    {
        get{ return self.flightClass}
        set{ self.flightClass = newValue}
    }
    //    var FlightAirplaneID : String?
    //    {
    //        get{ return self.FlightAirplaneID}
    //        set{ self.flightAirplaneID = newValue}
    //    }
    //    var FlightPilotID : String?
    //    {
    //        get{ return self.FlightPilotID}
    //
    //    }
    
//    var FlightCost : Double?
//    {
//        get{ return self.flightCost}
//        set{ self.flightCost = newValue}
//    }
    
    init()
    {
        self.flightID = 0
        self.flightFrom = AirportList.None
        self.flightTo = AirportList.None
        self.flightAirlineID = AirlineList.None
        // self.flightSchdate = nil
        self.flightClass = FlightClassList.None
       // self.flightCost = 0.0
        
        
        //        self.flightAirplaneID = ""
        //        self.flightPilotID = ""
    }
    init( flightID : Int,flightFrom : AirportList, flightTo : AirportList, flightAirlineID : AirlineList, flightClass : FlightClassList)
    {
        self.flightID = flightID
        self.flightFrom = flightFrom
        self.flightTo = flightTo
        self.flightAirlineID = flightAirlineID
        // self.flightSchdate = flightSchdate
        self.flightClass = flightClass
        //        self.flightAirplaneID = flightAirplaneID
        //        self.flightPilotID = flightPilotID
       // self.flightCost = flightCost
        
        
    }
    
   
    
    func displayData() -> String
    {
        var returnData = ""
        returnData += "\n Flight ID : \(self.flightID ?? 0)"
        returnData += "\n Flying from : \(self.flightFrom ?? AirportList.None)"
        returnData += "\n Flying To : \(self.flightTo ?? AirportList.None)"
        returnData += "\n Airline Name : \(self.flightAirlineID ?? AirlineList.None)"
        returnData += "\n Flight Class : \(self.flightClass ?? FlightClassList.None)"
//          returnData += "\n Flight Cost : \(self.flightCost ?? 0.0)"
        return returnData
    }
    func display()
    {
        print("Flight ID : ")
        self.flightID = (Int)(readLine()!)
        
//        print("Flight Cost : ")
//        self.flightCost = (Double)(readLine()!)
        
        print("Departure : ")
        for flightFrom in AirportList.allCases
        {
            print("Enter \(flightFrom.rawValue) for \(flightFrom)")
        }
        let choice = (Int)(readLine()!)
          self.flightFrom = AirportList(rawValue: choice!)!
        
        print("Arrived to : ")
        for flightTo in AirportList.allCases
        {
            print("Enter \(flightTo.rawValue) for \(flightTo)")
        }
        let Choice = (Int)(readLine()!)
        self.flightTo = AirportList(rawValue: Choice!)!
        
        print("Airline Id : ")
        for AirlineId in AirlineList.allCases
        {
            print("Enter \(AirlineId.rawValue) for \(AirlineId)")
        }
        let Choice1 = (Int)(readLine()!)
        self.flightAirlineID = AirlineList(rawValue: Choice1!)!
        
        print("Flight Class : ")
        for Flightclass in FlightClassList.allCases
        {
            print("Enter \(Flightclass.rawValue) for \(Flightclass)")
        }
        let choice2 = (Int)(readLine()!)
        self.flightClass = FlightClassList(rawValue: choice2!)!
        
        //        print("Enter Date (in DD/MM/YYYY Format)")
        //        let dateString = readLine()
        
    }
}
