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
   // var PassengerList = [String : Passanger]()
    
    func loadFlightInfo(){
        FlightList = [:]
        
        do {
            let Delhi = try Flight(flightID: 101, flightFrom: AirportList.Toronto_Pearson_Airport, flightTo: AirportList.Indira_Gandhi_International_Airport, flightAirlineID: AirlineList.AirCanada, flightClass: FlightClassList.Business)
            FlightList[(Delhi.FlightID!)] = Delhi
            
            let Paris = try Flight(flightID: 102, flightFrom: AirportList.Indira_Gandhi_International_Airport, flightTo: AirportList.Charles_de_Gaulle_Airport, flightAirlineID: AirlineList.AirFrance, flightClass: FlightClassList.Economy)
            FlightList[(Paris.FlightID!)] = Paris
            
            let London = try Flight(flightID: 103, flightFrom: AirportList.Heathrow_Airport_London, flightTo: AirportList.Indira_Gandhi_International_Airport, flightAirlineID: AirlineList.AirFrance, flightClass: FlightClassList.Economy)
            FlightList[(Paris.FlightID!)] = Paris
        } catch {
            print("Error: \(error)")
        }
    }
    func displayFlights(){
        print("Flight Details")
        Util.drawLine()
        print("\t ID \t\t Departure \t\t\t\t Arrival \t\t\t\t\t Airline \t\t\t\t\t\t\t Class")
        for(_, plane) in self.FlightList {
            Util.drawLine()
            print("\t \(plane.FlightID) ------ \(plane.FlightFrom) ------ \(plane.FlightTo) ------ \(plane.FlightAirlineID) ------ \(plane.FlightClass)")
        }
        Util.drawLine()
      
    }
    
    
    
}
