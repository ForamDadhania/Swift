//
//  DataHelper.swift
//  Gallery
//
//  Created by MacStudent on 2018-07-31.
//  Copyright © 2018 MacStudent. All rights reserved.
//

import Foundation
class DataHelper{
    var ArtList = [String : Art]()
    var CustomerList = [String : Customer]()
    
    
    init(){
       self.loadArtData()
        self.loadCustomerData()
    }
    
    
    func loadtArtData(){
        
    }
    
    func loadArtData(){
        ArtList = [:]
        do{
            let product1 = try Art(artID: "A111", title: "Telephone", category: ArtCategory.Antiques, price: 1.5, artistID: "C304", name: "Mr.Fresco", country: "Italy")
            ArtList[(product1.ArtID!)] = product1
            
            let product2 = try Art(artID: "H112", title: "Navajo rug", category: ArtCategory.Handcrafts, price: 3428.0, artistID: "C344", name: "NVG", country: "Ghana")
             ArtList[(product2.ArtID!)] = product2
          
            let product3 = try Art(artID: "P112", title: " The Caterpillar", category: ArtCategory.Painting, price: 3.5, artistID: "CF34", name: "Natasha Preston", country: "England")
             ArtList[(product3.ArtID!)] = product3
           
            let product4 = try Art(artID: "P113", title: "  The Imperial", category: ArtCategory.Painting, price: 1.0, artistID: "G654", name: "Pablasco", country: "Rome")
             ArtList[(product4.ArtID!)] = product4
           
            let product5 = try Art(artID: "S111", title: "   Mozarabic Beatus miniature", category: ArtCategory.Skuplture, price: 7255.0, artistID: "G634", name: " The Imagica", country: "Persia")
             ArtList[(product5.ArtID!)] = product5
        }catch{
            print("Error: \(error)")
        }
    }
    
    func displayArts(){
        print("Artifacts Details")
        Util.drawLine()
        print("\t ID \t\t Title \t\t\t\t Category \t\t Price \t\t Artist")
        for (_, value) in self.ArtList.sorted(by: { $0.key < $1.key }){
            Util.drawLine()
            print("\t \(value.ArtID!) ------ \(value.Title!) ------ \(value.Categopry!) ------ \(value.Price!) ------ \(value.Name!)")
        }
        Util.drawLine()
    }
    
    func searchArt(artID : String) -> Art?{
        if ArtList[artID] != nil{
            return ArtList[artID]! as Art
        }
        else{
            print("Sorry..The artifact number you have entered is not available")
            return nil
        }
    }
    
    
    
    
    func loadCustomerData(){
        CustomerList = [:]
        
        let foram = Customer(customerID: "A101", name: "Daniel", address: "London", contactNo: "4379292411", password: "White")
       CustomerList[foram.customerID!] = foram
        
        
    let aayat = Customer(customerID: "A111", name: "Lucifer", address: "Heaven", contactNo: "1234567890", password: "MorningStar")
        CustomerList[aayat.customerID!] = aayat
        
        
    }
    
    
    
    
    
}
