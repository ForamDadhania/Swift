//
//  Passanger.swift
//  AirlineReservation
//
//  Created by MacStudent on 2018-07-28.
//  Copyright © 2018 MacStudent. All rights reserved.
//

import Foundation
class Passanger : IDisplay {
    private var passangerID : String?
    private var passportNo : String?
    private var passangerName : String?
    private var passangerMobile : String?
    private var passangerEmail : String?
    private var passangerAddress : String?
    private var passangerBirthdate : String?
    
    //stored property
    var PassangerID : String?{
        get{ return self.passangerID }
        set{ self.passangerID = newValue }
    }
    
    var PassportNo : String?{
        get{ return self.passportNo }
        set{ self.passportNo = newValue }
    }
    
    var PassangerName : String?{
        get{ return self.passangerName }
        set{ self.passangerName = newValue }
    }
    
    var PassangerMobile : String?{
        get { return self.passangerMobile}
        set {self.passangerMobile = newValue}
    }
    var PassangerEmail : String?{
        get { return self.passangerEmail}
        set {self.passangerEmail = newValue}
    }
    var PassangerAddress : String?{
        get { return self.passangerAddress}
        set {self.passangerAddress = newValue}
    }
    var PassangerBirthdate :  String?{
        get { return self.passangerBirthdate}
        set {self.passangerBirthdate = newValue}
    }
    
    //default initializer / constructor
    init(){
        self.passangerID = ""
        self.passportNo = ""
        self.passangerName = ""
        self.passangerMobile = ""
        self.passangerEmail = ""
        self.passangerAddress = ""
        self.passangerBirthdate = ""
    }
    
    //parameterized initializer
  init(passangerID: String, passportNo : String, passangerName : String, passangerMobile : String, passangerEmail : String, passangerAddress : String, passangerBirthdate : String){
        
        self.passangerID = passangerID
        self.passportNo = passportNo
        self.passangerName = passangerName
        self.passangerMobile = passangerMobile
        self.passangerEmail = passangerEmail
        self.passangerAddress = passangerAddress
        self.passangerBirthdate = passangerBirthdate
    }
    
    func displayData() -> String{
        var returnData = ""
        
        if self.passangerID != nil{
            returnData += " Passenger ID : " + self.passangerID!
        }
        
        if self.passportNo != nil{
            returnData += " Passport No : " + self.passportNo!
        }
        
        if self.passangerName != nil{
            returnData += "\n Passenger Name : " + self.passangerName!
        }
        if self.passangerMobile != nil{
            returnData += "\n Cellphone Number : " + self.passangerMobile!
        }
        if self.passangerEmail != nil{
            returnData += "\n Passenger Email : " + self.passangerEmail!
        }
        if self.passangerAddress != nil{
            returnData += "\n Address : " + self.passangerAddress!
        }
        if self.passangerBirthdate != nil{
            returnData += "\n Birthdate : DD/MM/YYYY" + self.passangerBirthdate!
        }
        return returnData
    }
    
    func passengerData(){
        print("Passenger ID : ")
        self.passangerID = readLine()!
        print("Passport Number : ")
        self.passportNo = readLine()!
        print("Passenger Name : ")
        self.passangerName = readLine()!
        print("Cellphone Number : ")
        self.passangerMobile = readLine()!
        print("Email ID : ")
        self.passangerEmail = readLine()!
        print("Address : ")
        self.passangerAddress = readLine()!
        print("Birthdate : ")
        self.passangerBirthdate = readLine()!
        
    }
}

