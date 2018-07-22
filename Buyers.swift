//
//  Buyers.swift
//  WholeSaleManagement
//
//  Created by Macbook on 2017-06-10.
//  Copyright © 2017 Macbook. All rights reserved.
//

import Foundation


class buyers
{
    var buyerId : Int
    var buyerName : String
    var address : String
    var contact : Int
    /* init()
     {
     
     
     
     }*/
    init(bid : Int, bname : String, adrs : String,cntc : Int )
    {
        self.buyerId = bid
        self.buyerName = bname
        self.address = adrs
        self.contact = cntc
    }
    
    func getbuyerId() -> Int {
        return buyerId
    }
    
    func getbuyerName() -> String {
        return buyerName
    }
    
    func getaddress() -> String {
        return address
    }
    func getcntc() -> Int {
        return contact
    }
    
    
    
    
}
