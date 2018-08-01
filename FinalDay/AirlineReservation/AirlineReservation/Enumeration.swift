//
//  Enumeration.swift
//  AirlineReservation
//
//  Created by MacStudent on 2018-08-01.
//  Copyright © 2018 MacStudent. All rights reserved.
//

import Foundation
enum AirportList : Int, CaseIterable
{
    case Atlanta_Hartsfield_Jackson_Atlanta_International_Airport = 1
    case LosAngeles_International_Airport = 2
    case Paris_Charles_de_Gaulle_Airport = 3
    case London_Heathrow_Airport = 4
    case Chicago_OHare_International_Airport = 5
    case None  = 6
}

enum AirlineList : Int ,CaseIterable
{
    case Lufthansa = 1
    case Emirates = 2
    case Etihad_Airways = 3
    case Cathay_Pacific_Airways = 4
    case Hainan_Airlines = 5
    case None = 6
}

enum FlightClassList : Int, CaseIterable
{
    case Business = 1
    case First_Class = 2
    case Economy = 3
    case None = 4
}

enum ReservationStatus : CaseIterable{
    case Confirmed
    case Pending
    case Cancle
    case Noreservation
    
}

enum Meal : Int, CaseIterable{
    case Vegetarian = 1
    case NonVegetarian = 2
    case Nofood = 3
}

extension CaseIterable where Self: Hashable {
    static var allCases: [Self] {
        return [Self](AnySequence { () -> AnyIterator<Self> in
            var raw = 0
            var first: Self?
            return AnyIterator {
                let current = withUnsafeBytes(of: &raw) { $0.load(as: Self.self) }
                if raw == 0 {
                    first = current
                } else if current == first {
                    return nil
                }
                raw += 1
                return current
            }
        })
    }
}
