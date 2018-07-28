//
//  Seats.swift
//  AirlineReservation
//
//  Created by MacStudent on 2018-07-28.
//  Copyright © 2018 MacStudent. All rights reserved.
//

import Foundation
class Seats{
    func seatnumber(){
        var seatmap = ["A","B","C","D"]
        //for value in seatmap{
        for row in 1...4{
            for col in seatmap{
                
                print("\(col)\(row)")
                
                //  print(seatmap[row][col])
            }
        }
    }
    
}
