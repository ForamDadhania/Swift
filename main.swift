//
//  main.swift
//  WholeSaleManagement
//
//  Created by Macbook on 2017-06-10.
//  Copyright © 2017 Macbook. All rights reserved.
//

import Foundation

class main
{
    
    var product : [items]
    var buyr : [buyers]
    var custo : [Customer]
    var amtrcvd : Int
    var profit : Int
    init()
    {
        product = []
        buyr = []
        custo = []
        amtrcvd = 0
        profit = 0
    }
    
    
    //to add & show items
    func addItems()
    {
                product.append(items(id:101, n: "Coldrink", qty: 100,cp : 5, sp: 6))
                product.append(items(id:102, n: "IceCream", qty: 8,cp : 10, sp: 11))
                product.append(items(id:103, n: "Clothes", qty: 800,cp : 2, sp: 4))
                product.append(items(id:104, n: "Shoes", qty: 200,cp : 1, sp: 3))
                product.append(items(id:105, n: "Mobiles", qty: 10,cp : 5, sp: 6))
                product.append(items(id:106, n: "Laptops", qty: 100,cp : 4, sp: 7))
    }
    public func displayProducts()  {
        
        if(product.count > 0){
            print("Stock Details")
            print("----------------------")
            print("ID -  Name -  Quantity - CostPrice-SellPrice")
        }
        for i in product{
            print("\(i.getitemId()) - \(i.getitemName()) - \(i.getQuantity()) - \(i.getcostprice()) - \(i.itemSellprice)")
        }
        
    }
    
    
    //to add & show buyers
    func addBuyers(){
        buyr.append(buyers(bid : 201, bname: "Mark Jones", adrs: "North York", cntc : 98746562131))
        buyr.append(buyers(bid : 202, bname: "Edward Jane", adrs: "Yorkland", cntc : 98746562131))
        buyr.append(buyers(bid : 203, bname: "David Lee", adrs: "Sheppard", cntc : 98746562131))
        buyr.append(buyers(bid : 204, bname: "Harry Peter", adrs: "Etobicoke", cntc : 98746562131))
    }
    
    public func displayBuyers()  {
        
        if(buyr.count > 0){
            print("\n\n\nBuyers Details")
            print("----------------------------------")
            print("ID -  Name -  Address - Contact No.")
        }
        for j in buyr{
            print("\(j.getbuyerId()) - \(j.getbuyerName()) - \(j.address) - \(j.contact)")
        }
        
    }

    //to add and show customers
    
    func addCustomers(){
        custo.append(Customer(cid : 301, cname: "Andrew", adrss: "Yorkland", zip : 144002, paymnt : "Y", paid : 1500 , pending : 0 , total : 1000))
        custo.append(Customer(cid : 302, cname: "Marrie", adrss: "Northrn", zip : 142356, paymnt : "N", paid : 1600 , pending : 400 , total : 2000 ))
        custo.append(Customer(cid : 303, cname: "Lory", adrss: "NorthBlvd", zip : 267872, paymnt : "Y", paid : 500 , pending : 0 , total : 5000))
        custo.append(Customer(cid : 304, cname: "Jones", adrss: "Etobicoke", zip : 144401,paymnt :"N", paid : 100 , pending : 100 , total : 200))
        custo.append(Customer(cid : 305, cname: "Henry", adrss: "WinniePeg", zip : 442303, paymnt :"N", paid : 400 , pending : 110 , total : 510))
    }
    
    public func displayCustomers()  {
        
        if(custo.count > 0){
            print("\n\n\nCustomers Details")
            print("----------------------------------")
            func defaulterList() {
                //var defaulters = 0
                print()
                
                print("-------------------------------------")
                for x in custo{
                    if(x.getpayment() == "N"){
                        //defaulters += 1
                        print("\(x.getcustomerName())")
                    }
                }
                print("")
            }
        }
        print("ID -  Name -  Address - ZipCode - PaymentDone - PaidAmt - PendingAmt - TotalAmt")
        for k in custo{
            print("\(k.getcustomerId()) - \(k.getcustomerName()) - \(k.getcustomerAddress()) - \(k.getzipCode()) - \(k.getpayment()) -\(k.getpaidAmt()) - \(k.getpendingAmt()) - \(k.gettotalAmt())")
        }
        
    }
    
    //to show deafulters list
    func defaulterList() {
        
        print("\n\n\nList of Defaulters who has not paid")
        print("-------------------------------------")
        for x in custo{
          amtrcvd += x.getpaidAmt()
            if(x.getpayment() == "N"){
                print("\(x.getcustomerName())")
            }
        }
        print("")
    }
    
    //To find total pending and paid  
    func paidList() {
        //var paidlist = 0
        print("\nList of paid payments")
        print("-----------------------")
        for x in custo{
                print("\(x.getpaidAmt())")
           
        }
        print("\nList of pending payments")
        print("-------------------------")
        for x in custo{
            if(x.getpendingAmt() > 0){
                print("\(x.getpendingAmt())")
            }
        }
        print("")
    }
    
    
    
    
    
    //To find which items to buy if it's stock goes off
    func itemsTobuy(){
        print("\nItems to buy which are getting finish")
        print("---------------------------------------")
        for y in product{
            if(y.getQuantity() <= 10){
                print("\(y.getitemName())")
            }
        }
        print("")
    }
    
    
    
    //To find Monthly Profit
    func profitCalculation()
    {
        var p : Int = 0
        var totalcp = 0
        var totalsp = 0
        
        for ss in product{
            if(ss.getcostprice() < ss.getsellprice())
            {
                totalcp += ss.itemCostprice * ss.getQuantity()
                totalsp += ss.itemSellprice * ss.getQuantity()
                p = p + (totalsp - totalcp)
                
            }
        }
        
        profit = p - amtrcvd
        print("\nMonthly Profit :\(profit)")
    }
    
    //To Set Limit so that items can't be sold if these are out of stock
    func limit()
    {
        print("\nThese items can't be sold due to out of stock")
        for q in product{
            if(q.getQuantity() <= 10){
                print(q.getitemName())
            }
            else
            {
                product.append(items(id:q.getitemId(), n: q.getitemName(), qty: q.getQuantity() + 100,cp : 5, sp: 6))
            }
        }
        print("")
    }
    
}

var m = main();
m.addItems()
m.displayProducts()
m.addBuyers()
m.displayBuyers()
m.addCustomers()
m.displayCustomers()
m.defaulterList()
m.paidList()
m.itemsTobuy()
m.profitCalculation()
m.limit()










