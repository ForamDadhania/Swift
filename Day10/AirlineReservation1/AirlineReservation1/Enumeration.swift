//
//  Enumeration.swift
//  AirlineReservation1
//
//  Created by MacStudent on 2018-07-26.
//  Copyright © 2018 MacStudent. All rights reserved.
//

import Foundation
enum AirportList : Int, CaseIterable
{
    case Toronto_Pearson_Airport = 1
    case Indira_Gandhi_International_Airport = 2
    case Charles_de_Gaulle_Airport = 3
    case Heathrow_Airport_London = 4
    case Chhatrapati_Shivaji_International_Airport = 5
    case None  = 6
}

enum AirlineList : Int ,CaseIterable
{
    case AirCanada = 1
    case AirIndia = 2
    case AirFrance = 3
    case None = 4
}

enum FlightClassList : Int, CaseIterable
{
    case Business = 1
    case First_Class = 2
    case Economy = 3
    case None = 4
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


