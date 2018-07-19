//
//  Flight.swift
//  AirlineReservation
//
//  Created by MacStudent on 2018-07-19.
//  Copyright © 2018 MacStudent. All rights reserved.
//

import Foundation

class Flight{
    private var flightID : String?
    private var flightFrom : String?
    private var flightTo : String?
    private var flightAirlineID : Int?
    private var flightScheduleDate : Date?
    private var flightAirplaneID : String?
    private var flightPilotID : String?
    
    init(){
        self.flightID = ""
        self.flightFrom = ""
        self.flightTo = ""
        self.flightAirlineID = 0
        self.flightScheduleDate = nil
        self.flightAirplaneID = ""
        self.flightPilotID = ""
        
    }
    
    init(flightID: String, flightFrom: String, flightTo: String, flightAirlineID: Int, flightScheduleDate: Date, flightAirplaneID: String, flightPilotID: String){
        
        self.flightID = flightID
        self.flightFrom = flightFrom
        self.flightTo = flightTo
        self.flightAirlineID = flightAirlineID
        self.flightScheduleDate = flightScheduleDate
        self.flightAirplaneID = flightAirplaneID
        self.flightPilotID = flightPilotID
    }
}


