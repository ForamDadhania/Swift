//
//  SalesDetails.swift
//  WholeSaleManagement
//
//  Created by Macbook on 2017-06-10.
//  Copyright © 2017 Macbook. All rights reserved.
//

import Foundation
class salesDetails: items {
    
    var salesId: Int
    var itemCostprice : Double
    var itemSellprice : Double
    var profit : Double
    
    
    override init(){
        
        salesId = 0
        itemCostprice = 0.0
        itemSellprice = 0.0
        profit = 0.0
        super.init();
    }
    init(sId : Int, cp : Double, sp : Double, p : Double){
        salesId = sId
        itemCostprice = cp
        itemSellprice = sp
        profit = p
        super.init()
        
    }
    func getsalesId() -> Int{
        return salesId
    }
    func getcostprice() -> Double{
        return itemCostprice
    }
    func getsellprice() -> Double{
        return itemSellprice
    }
    func getprofit() -> Double{
        return (itemCostprice - itemSellprice)
    }
}
