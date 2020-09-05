//
//  Basket.swift
//  FruitBasket
//
//  Created by Ahmed Fathi on 9/5/20.
//  Copyright © 2020 Fathi. All rights reserved.
//

import Foundation

public class Basket {
    
    private let capacity: Int
    private var fruits = [Fruit]()
    
    public var count: Int {
        return fruits.count
    }
    
    public init(_ capacity: Int) {
        self.capacity = capacity
    }
    
    public func add(_ fruit: Fruit) {
        if count < capacity {
            fruits.append(fruit)
        } else {
            print("Sorry, the basket is full. Maybe get a bigger basket.")
        }
    }
}

extension Basket: CustomStringConvertible {
    public var description: String {
        var description = "Capacity: \(count)/\(capacity)"
        description += fruits.map { $0.rawValue }.joined(separator: ", ")
        return description
    }
}



