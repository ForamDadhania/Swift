//
//  Art.swift
//  Gallery
//
//  Created by MacStudent on 2018-07-31.
//  Copyright © 2018 MacStudent. All rights reserved.
//

import Foundation


class Art :  Artist, IDisplay{

     var artID: String?
     var title : String?
     var category : ArtCategory?
     var price : Double?
    
    var ArtID : String? {
        get { return self.artID }
        set { self.artID = newValue}
    }
    var Title : String? {
        get { return self.title }
        set { self.title = newValue}
    }
    var Categopry : ArtCategory? {
        get { return self.category }
        set { self.category = newValue }
    }
    var Price : Double? {
        get { return self.price }
        set { self.price = newValue}
    }
  
    
    override init(){
        self.artID = ""
        self.title = ""
        self.category = ArtCategory.None
        self.price = 0.0
        super.init()
    }
    
    init(artID: String, title: String, category: ArtCategory, price: Double, artistID: String, name: String, country: String){
        self.artID = artID
        self.title = title
        self.category = category
        self.price = price
        super.init(artistID: artistID, name: name, country: country)
    }
    func display() -> String{
        var returnData = ""
        returnData += "\t \(self.artID ?? "") ------ \(self.title ?? "") ------ \(self.category ?? ArtCategory.None) ------ \(self.price ?? 0.0)"
      return  returnData
    }
    
}
