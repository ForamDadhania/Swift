//
//  Seats.swift
//  gh
//
//  Created by MacStudent on 2018-07-28.
//  Copyright © 2018 MacStudent. All rights reserved.
//

import Foundation
class Seats{
    var seatcode = [[0,0,0,0,0], [0,0,0,0,0]]
    func busclass(){
        print("***** First Class *****")
        for row in 0...2{
            for col in 0...2{
                if col==0{
                    print( "M"+"\(row + 1)", terminator: "\t")
                }
                if col==1{
                    print("N"+"\(row + 1)", terminator: "\t")
                }
            }
            print("\n")
        }
                
        print("***** Business Class *****")
        for row in 0...3{
            for col in 0...3{
                if col==0{
                    print( "X"+"\(row + 1)", terminator: "\t")
                }
                if col==1{
                    print("Y"+"\(row + 1)", terminator: "\t")
                }
                if col==2{
                    print("Z"+"\(row + 1)", terminator: "\t")
                }
            }
            print("\n")
        }
        print("***** Economy Class *****")
        for row in 0...5{
            for col in 0...5{
                if col==0{
                    print("A"+"\(row + 1)", terminator: "\t")
                }
                if col==1{
                    print("B"+"\(row + 1)", terminator: "\t")
                }
                if col==2{
                    print("C"+"\(row + 1)", terminator: "\t")
                }
                if col==3{
                    print("D"+"\(row + 1)", terminator: "\t")
                }
                if col==4{
                    print("E"+"\(row + 1)", terminator: "\t")
                }
                if col==5{
                    print("F"+"\(row + 1)", terminator: "\t")
                }
            }
            print("\n")
        }
        
    }
}
