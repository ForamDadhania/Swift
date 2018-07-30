//
//  DataHelper.swift
//  New
//
//  Created by MacStudent on 2018-07-28.
//  Copyright © 2018 MacStudent. All rights reserved.
//

import Foundation
class DataHelper{
    var ProductList = [Int : Product]()
    var CustomerList = [String : Customer]()
    
    init(){
        self.loadProductsData()
        self.loadCustomersData()
    }
    
    func loadProductsData(){
        ProductList = [:]
        
        do{
            
            let epson = try Product(productID: 111, productName: "Projector", manufecturer: "Epson", unitPrice: 1000.1, category: ProductCategory.Appliances)
            ProductList[(epson.ProductID!)] = epson
            
            let handcream = try Product(productID: 111, productName: "Handcream", manufecturer: "Glysomed", unitPrice: 12.23, category: ProductCategory.Health)
            ProductList[(handcream.ProductID!)] = handcream
            
            let flask = try Product(productID: 112, productName: "Flask", manufecturer: "Contigo", unitPrice: 20, category: ProductCategory.Appliances)
            ProductList[(flask.ProductID!)] = flask
            
            let zelda = try Product(productID: 113, productName: "The Legend of Zelda", manufecturer: "Nintendo", unitPrice: 27.97, category: ProductCategory.Books)
            ProductList[(zelda.ProductID!)] = zelda
            
            let sapiens = try Product(productID: 114, productName: "Sapiens", manufecturer: "Yuval Noah Harari", unitPrice: 11.89, category: ProductCategory.Books)
            ProductList[(sapiens.ProductID!)] = sapiens
            
            let socks = try Product(productID: 115, productName: "Puma Men's 6 pack Low Cut Socks", manufecturer: "Puma", unitPrice: 23.40, category: ProductCategory.Clothing)
            ProductList[(socks.ProductID!)] = socks
            
            let dress = try Product(productID: 116, productName: "Women's Vintage Floral Cocktail Dress", manufecturer: "OWIN", unitPrice: 45, category: ProductCategory.Clothing)
            ProductList[(dress.ProductID!)] = dress
        }catch{
            print("Error: \(error)")
        }
    }
    
    func displayProducts(){
        print("Product Details")
        Util.drawLine()
        print("\t ID \t\t Name \t\t\t\t Manufecturer \t\t Category \t\t Unit Price")
        for (_, value) in self.ProductList.sorted(by: { $0.key < $1.key }){
            Util.drawLine()
            print("\t \(value.ProductID!) ------ \(value.ProductName!) ------ \(value.Manufecturer!) ------ \(value.Category!) ------ \(value.UnitPrice!)")
        }
        Util.drawLine()
    }
    
    func searchProduct(productID : Int) -> Product?{
        if ProductList[productID] != nil{
            return ProductList[productID]! as Product
        }
        else{
            print("Sorry..The product number you have entered is not available")
            return nil
        }
    }
    
    func loadCustomersData(){
        CustomerList = [:]
        
        let Param = Customer(customerID: "C101", customerName: "Paramjeet", email: "param@mad.com", address: "114 Michigan Ave. Brampton", creditCardInfo: "4520-0100-1234-5678", shippingInfo: "Ship to lambton college between 08:00 AM to 12:00 PM")
        CustomerList[Param.CustomerID!] = Param
        
        let Santosh = Customer(customerID: "C102", customerName: "Santosh", email: "Santosh@mad.com", address: "54 Marjary Ave. DownTown. Toronto", creditCardInfo: "4520-0100-6543-8976", shippingInfo: "Deliver at Papa John's at 03PM")
        CustomerList[Santosh.CustomerID!] = Santosh
    }
    
    func displayCustomers(){
        for (_, value) in self.CustomerList.sorted(by: { $0.key < $1.key }){
            Util.drawLine()
            print(value.displayData())
        }
        Util.drawLine()
    }
}
