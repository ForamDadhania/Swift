//
//  Purchase.swift
//  Gallery
//
//  Created by MacStudent on 2018-07-31.
//  Copyright © 2018 MacStudent. All rights reserved.
//

import Foundation
typealias artifacts = (artID: String, art: Art, quantity: Int)

class Purchase: Customer{
    var purID : String
    var purDate : Date
    var purArts : [artifacts]
    var datahelper = DataHelper()
    
    var PurID : String{
        get { return self.purID }
        set { self.purID = newValue}
    }
    var PurDate : Date{
        get { return self.purDate }
        set { self.purDate = newValue}
    }
    
    var artsAmount: Double?{
        get{
            var amount = 0.0
            if !self.purArts.isEmpty{
                for (_, arts, qty) in self.purArts{
                    amount += arts.Price! * (Double)(qty)
                }
            }
            return amount
        }
    }
    
    override init() {
        self.purID = ""
        self.purDate = DateFormatter().date(from: "")!
        self.purArts = []
        super.init()
    }
    
    override func displayData() -> String {
        var returnData = ""
       
        returnData += "\n Purchase ID : \(self.PurID)"
        returnData += "\n Purchase Date : \(self.PurDate )"
    
        returnData += "\n Arts List : "
        if !self.purArts.isEmpty{
            for (_, product, qty) in self.purArts{
                returnData += "\n \tArts : \(product.display())"
                returnData += "\n \tQuantity : \(qty)"
            }
        }else{
            returnData += "\n No Artifacts ordered yet"
        }
        returnData += "\n Purchase Amount : \(self.artsAmount  ?? 0.0)"
        
        return returnData
    }
    
    func addItem(){
        dataHelper.displayArts()
        print("Please enter Art ID to choose any artifacts from the list  : ")
        let selectedArtsID : String = (String)(readLine()!)
        
        if let selectedArts = dataHelper.searchArt(artID: selectedArtsID){
            self.PurID = selectedArtsID
            self.PurDate = Date()
            
            print("How many quantities do you want ? : ")
            let qty : Int = (Int)(readLine()!) ?? 1
            
            self.purArts += [(artID: selectedArtsID, art: selectedArts, quantity: qty)]
          
            
        }else{
            print("Sorry...The artifact you want to purchase is not available.")
        }
    }
    
}
