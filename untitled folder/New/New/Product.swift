//
//  Product.swift
//  New
//
//  Created by MacStudent on 2018-07-28.
//  Copyright © 2018 MacStudent. All rights reserved.
//

import Foundation
class Product : IDisplay{
    private var productID : Int?
    private var productName : String?
    private var manufecturer : String?
    private var unitPrice : Double?
    private var category : ProductCategory?
    
    var ProductID : Int? {
        get{ return self.productID }
        set{ self.productID = newValue}
    }
    var ProductName : String? {
        get { return self.productName }
        set { self.productName = newValue }
    }
    var UnitPrice : Double? {
        get{ return self.unitPrice }
        set{ self.unitPrice = newValue}
    }
    var Manufecturer : String? {
        get{ return self.manufecturer}
        set{ self.manufecturer = newValue}
    }
    var Category : ProductCategory?{
        get{ return self.category}
        set{ self.category = newValue}
    }
    
    
    //designated
    init(){
        self.productID = 0
        self.productName = ""
        self.manufecturer = ""
        self.unitPrice = 0.0
        self.category = ProductCategory.None
    }
    
    //failable
    //throwable
    init (productID: Int, productName: String, manufecturer: String, unitPrice: Double, category: ProductCategory){//} throws {
        
        //        if productID == 0 {
        //            return nil
        //        }
        //
        self.productID = productID
        self.productName = productName
        self.manufecturer = manufecturer
        
        //        if unitPrice <= 0 {
        //            throw ProductError.InvalidProductPrice(productID)
        //        }
        
        self.unitPrice = unitPrice
        self.category = category
    }
    
    //    convenience init(productID: Int){
    //        self.init(productID: productID, productName: "Unknown", manufecturer: "Unknown", unitPrice: 0.0, category: ProductCategory.None)
    //    }
    //
    //   convenience init(productName: String){
    //    self.init(productID: 0, productName: productName, manufecturer: "Unknown", unitPrice: 0.0, category: ProductCategory.None)
    //
    //        }
    
    func displayData() -> String{
        //        var returnData = ""
        //
        //        returnData += " Product ID : \(self.productID ?? 0)"
        //        returnData += "\n Product Name : \(self.productName ?? "")"
        //        returnData += "\n Manufecturer : \(self.manufecturer ?? "")"
        //        returnData += "\n Category : \(self.category ?? ProductCategory.None)"
        //        returnData += "\n Unit Price : \(self.unitPrice ?? 0.0)"
        //
        //        return returnData
        
        var returnData = ""
        returnData += "\t \(self.productID ?? 0) ------ \(self.productName ?? "") ------ \(self.manufecturer ?? "") ------ \(self.category ?? ProductCategory.None) ------ \(self.unitPrice ?? 0.0)"
        return returnData
    }
    
    func newProduct(){
        print("Enter Product ID : ")
        self.productID = (Int)(readLine()!)
        print("Enter Product Name : ")
        self.productName = readLine()!
        print("Enter Manufecturer : ")
        self.manufecturer = readLine()!
        
        print("Please choose product category : ")
        for category in ProductCategory.allCases{
            print("Enter \(category.rawValue) for  \(category)")
        }
        let choice = (Int)(readLine()!) ?? 5
        self.category = ProductCategory(rawValue: choice)
        
        print("Enter Unit Price : ")
        self.unitPrice = (Double)(readLine()!)
    }
}
