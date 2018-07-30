//
//  Order.swift
//  New
//
//  Created by MacStudent on 2018-07-28.
//  Copyright © 2018 MacStudent. All rights reserved.
//

import Foundation
typealias orderItem = (productID: Int, product: Product,quantity: Int)

class Order: Customer {
    private var orderID : Int
    private var orderDate : Date
    private var orderStatus : OrderStatusList?
    private var orderProducts : [orderItem]
    private var dataHelper = DataHelper()
    
    var OrderID : Int{
        get { return self.orderID }
        set{ self.orderID = newValue}
    }
    var OrderDate : Date{
        get { return self.orderDate }
        set{ self.orderDate = newValue}
    }
    var OrderStatus : OrderStatusList?{
        get { return self.orderStatus ?? OrderStatusList.NoOrder }
        set{ self.orderStatus = newValue}
    }
    
    //computed property
    var orderAmount: Double?{
        get{
            var amount = 0.0
            if !self.orderProducts.isEmpty{
                for (_, prod, qty) in self.orderProducts{
                    amount += prod.UnitPrice! * (Double)(qty)
                }
            }
            return amount
        }
    }
    
    override init(){
        self.orderID = 0
        self.orderDate = DateFormatter().date(from: "")!
        self.orderStatus = OrderStatusList.NoOrder
        self.orderProducts = []
        super.init()
    }
    
    override func displayData() -> String {
        var returnData = ""
        
        returnData += "\n Order ID : \(self.OrderID)"
        returnData += "\n Order Date : \(self.OrderDate )"
        //        returnData += super.displayData()
        returnData += "\n Products List : "
        if !self.orderProducts.isEmpty{
            for (_, product, qty) in self.orderProducts{
                returnData += "\n \tProduct : \(product.displayData())"
                returnData += "\n \tQuantity : \(qty)"
            }
        }else{
            returnData += "\n No products in the order"
        }
        returnData += "\n Order Status : \(self.OrderStatus ?? OrderStatusList.NoOrder)"
        returnData += "\n Order Amount : \(self.orderAmount  ?? 0.0)"
        
        return returnData
    }
    
    func addOrder(){
        dataHelper.displayProducts()
        print("Please enter product ID to choose any product from the list : ")
        let selectedProductID : Int = (Int)(readLine()!)!
        
        if let selectedProduct = dataHelper.searchProduct(productID: selectedProductID){
            self.OrderID = selectedProductID
            self.OrderDate = Date()

            print("How many quantities do you want ? : ")
            let qty : Int = (Int)(readLine()!) ?? 1

            self.orderProducts += [(productID: selectedProductID, product: selectedProduct, quantity: qty)]
            self.OrderStatus = OrderStatusList.Placed

        }else{
            print("Sorry...The product you entered is unavailable")
        }
    }
    
    func cancelOrder(){
        if !orderProducts.isEmpty {
            print("Review your order \n \(self.displayData())")
            
            print("Please enter product ID to remove from the order : ")
            let selectedProductID : Int = (Int)(readLine()!)!
            var productIndex = -1
            
            for (index, item) in self.orderProducts.enumerated(){
                if (item.productID == selectedProductID){
                    productIndex = index
                }
            }
            
            if productIndex != -1{
                self.orderProducts.remove(at: productIndex)
                print("The product is removed from your order")
            }
        }else{
            print("You have no item in your order")
        }
    }
}
