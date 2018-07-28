//
//  Reservation.swift
//  AirlineReservation
//
//  Created by MacStudent on 2018-07-28.
//  Copyright © 2018 MacStudent. All rights reserved.
//

import Foundation
class Reservation{
    private var reserveID : Int?
    private var reserveDesc : String?
    private var reservePID : String?
    private var reserveFID : String?
    private var reserveDate : String?
    private var reserveSeatNo : String?
    private var reserveStatus : String?
    private var reserveMealType : String?
    
    //default initializer
    init(){
        self.reserveID = 0
        self.reserveDesc = ""
        self.reservePID = ""
        self.reserveFID = ""
        self.reserveDate = ""
        self.reserveSeatNo = ""
        self.reserveStatus = ""
        self.reserveMealType = ""
    }
    
    //parameterized initializer
    init(reserveID: Int, reserveDesc: String, reservePID: String, reserveFID: String, reserveDate: String, reserveSeatNo: String, reserveStatus: String, reserveMealType: String){
        
        self.reserveID = reserveID
        self.reserveDesc = reserveDesc
        self.reservePID = reservePID
        self.reserveFID = reserveFID
        self.reserveDate = reserveDate
        self.reserveSeatNo = reserveSeatNo
        self.reserveStatus = reserveStatus
        self.reserveMealType = reserveMealType
    }
    
}
