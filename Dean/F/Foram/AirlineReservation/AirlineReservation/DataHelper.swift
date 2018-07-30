//
//  DataHelper.swift
//  AirlineReservation
//
//  Created by MacStudent on 2018-07-28.
//  Copyright © 2018 MacStudent. All rights reserved.
//

import Foundation
class DataHelper{
    var FlightList = [Int : Flight]()
   
    init(){
        self.loadFlightInfo()
    }
    func loadFlightInfo(){
        
        FlightList =  [:]
       
        let delhi = Flight(flightID: 101, flightFrom: AirportList.Toronto_Pearson_Airport, flightTo: AirportList.Indira_Gandhi_International_Airport, flightAirlineID: AirlineList.AirCanada, flightClass: FlightClassList.Business)
            FlightList[(delhi.FlightID!)] = delhi
            
            let paris = Flight(flightID: 102, flightFrom: AirportList.Indira_Gandhi_International_Airport, flightTo: AirportList.Charles_de_Gaulle_Airport, flightAirlineID: AirlineList.AirFrance, flightClass: FlightClassList.Economy)
            FlightList[(paris.FlightID!)] = paris
            
            let london = Flight(flightID: 103, flightFrom: AirportList.Heathrow_Airport_London, flightTo: AirportList.Indira_Gandhi_International_Airport, flightAirlineID: AirlineList.AirFrance, flightClass: FlightClassList.Economy)
            FlightList[(london.FlightID!)] = london
        }
    
    func displayFlights(){
     print("Flight Details")
        Util.drawLine()
        print("\t ID \t\t Departure \t\t\t\t Arraival \t\t Airline \t\t Class")
        for(_, plane) in FlightList.sorted(by: {$0.key < $1.key}){
           Util.drawLine()
         print("\t \(plane.FlightID!) ------ \(plane.FlightFrom!) ------ \(plane.FlightTo!) ------ \(plane.FlightAirlineID!) ------ \(plane.FlightClass!)")
        }
      Util.drawLine()
    }
    
    func searchFlight(flightID: Int) -> Flight?{
        if FlightList[flightID] != nil{
            return FlightList[flightID]! as Flight
        }else{
            print("There is no such flight. Please enter a valid ID")
            return nil
        }
    }
}

