//
//  Enumeration.swift
//  New
//
//  Created by MacStudent on 2018-07-28.
//  Copyright © 2018 MacStudent. All rights reserved.
//

import Foundation
enum ProductCategory : Int, CaseIterable{
    case Clothing = 1
    case Health = 2
    case Books = 3
    case Appliances = 4
    case None = 5
}

enum OrderStatusList : CaseIterable{
    case Shipped
    case Delivered
    case Cancelled
    case Confirmed
    case Placed
    case InTransit
    case NoOrder
}

enum ProductError: Error, CustomStringConvertible {
    case InvalidProductID
    case InvalidProductPrice(Int)
    
    var description: String {
        switch self {
        case .InvalidProductID:
            return "Invalid product id"
        case .InvalidProductPrice(let productID):
            return "Invalid product price for product id :: \(productID)"
        }
    }
}


extension CaseIterable where Self: Hashable {
    static var allCases: [Self] {
        return [Self](AnySequence { () -> AnyIterator<Self> in
            var raw = 0
            var first: Self?
            return AnyIterator {
                let current = withUnsafeBytes(of: &raw) { $0.load(as: Self.self) }
                if raw == 0 {
                    first = current
                } else if current == first {
                    return nil
                }
                raw += 1
                return current
            }
        })
    }
}
