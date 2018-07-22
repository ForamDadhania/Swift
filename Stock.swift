
//
//  Stock.swift
//  WholeSaleManagement
//
//  Created by Macbook on 2017-06-10.
//  Copyright © 2017 Macbook. All rights reserved.
//

import Foundation

class items
{
    var itemId : Int
    var itemName : String
    var quantity : Int
    var itemCostprice : Int
    var itemSellprice : Int
    //var profit : Double
    
    init(){
        itemId = 0
        itemName = ""
        quantity = 0
        itemCostprice = 0
        itemSellprice = 0
        //profit = 0.0
    }
    init(id : Int, n : String, qty : Int,cp : Int,sp : Int){
        self.itemId = id
        self.itemName = n
        self.quantity = qty
        itemCostprice = cp
        itemSellprice = sp
        //profit = p
    }
    
    func getitemId() -> Int {
        return itemId
    }
    
    func getitemName() -> String {
        return itemName
    }
    
    func getQuantity() -> Int {
        return quantity
    }
    func getcostprice() -> Int{
        return itemCostprice
    }
    func getsellprice() -> Int{
        return itemSellprice
    }
    /*func getprofit() -> Double{
        return (itemCostprice - itemSellprice)
    }
    
    */
    
}
