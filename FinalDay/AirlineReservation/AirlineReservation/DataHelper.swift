//
//  DataHelper.swift
//  AirlineReservation
//
//  Created by MacStudent on 2018-08-01.
//  Copyright © 2018 MacStudent. All rights reserved.
//

import Foundation
class DataHelper{
    var FlightList = [Int : Flight]()
    var SelectedFlights = [Flight]()
    
    init(){
        self.loadFlightInfo()
    }
    func loadFlightInfo(){
        
        FlightList =  [:]
        
        let atlanta_paris = Flight(flightID: 101, flightFrom: AirportList.Atlanta_Hartsfield_Jackson_Atlanta_International_Airport, flightTo: AirportList.Paris_Charles_de_Gaulle_Airport, flightAirlineID: AirlineList.Lufthansa, flightClass: FlightClassList.Business, flightSchdate:"23/06/2018")
        FlightList[(atlanta_paris.FlightID!)] = atlanta_paris
        
        let LA_chicago = Flight(flightID: 102, flightFrom: AirportList.LosAngeles_International_Airport, flightTo: AirportList.Chicago_OHare_International_Airport, flightAirlineID: AirlineList.Emirates, flightClass: FlightClassList.Economy, flightSchdate:"04/11/2018")
        FlightList[(LA_chicago.FlightID!)] = LA_chicago
        
        let london_paris = Flight(flightID: 103, flightFrom: AirportList.London_Heathrow_Airport, flightTo: AirportList.Paris_Charles_de_Gaulle_Airport, flightAirlineID: AirlineList.Cathay_Pacific_Airways, flightClass: FlightClassList.Economy, flightSchdate:"06/09/2018")
        FlightList[(london_paris.FlightID!)] = london_paris
        
        let chicago_atlanta = Flight(flightID: 104, flightFrom: AirportList.Chicago_OHare_International_Airport, flightTo: AirportList.Atlanta_Hartsfield_Jackson_Atlanta_International_Airport, flightAirlineID: AirlineList.Hainan_Airlines, flightClass: FlightClassList.Economy, flightSchdate:"06/10/2018")
        FlightList[(chicago_atlanta.FlightID!)] = chicago_atlanta
        
        let LA_london = Flight(flightID: 105, flightFrom: AirportList.LosAngeles_International_Airport, flightTo: AirportList.London_Heathrow_Airport, flightAirlineID: AirlineList.Etihad_Airways, flightClass: FlightClassList.Economy, flightSchdate:"10/09/2018")
        FlightList[(LA_london.FlightID!)] = LA_london
        
        
        
        
    }
    
    func flightFr(depart: AirportList, arrive: AirportList) -> [Flight]{
        var flyings = [Flight]()
        for (_,flying) in FlightList{
            if flying.flightFrom == depart && flying.flightTo == arrive{
                flyings.append(flying)
            }
        }
        return flyings
    }
    
    func displayFlights(){
        print("Flight Details")
        Util.drawLine()
        print("\t ID \t\t Departure \t\t\t\t\t\t\t Arraival \t\t\t\t Airline \t\t\t\t Class")
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
    func displayAll(){
        print((SelectedFlights) as Any)
    }

}
