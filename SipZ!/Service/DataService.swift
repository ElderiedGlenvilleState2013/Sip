//
//  DataService.swift
//  SipZ!
//
//  Created by McKinney family  on 4/10/18.
//  Copyright © 2018 FasTek Technologies. All rights reserved.
//

import Foundation

class DataService {
    
    static let instance = DataService()
    
    private let stores = [Store(title: "Store One", imageName: "Bunghole"),
                          Store(title: "Store Two", imageName: "storetwo"),
                          Store(title: "Store Three", imageName: "store3")]
    
    private let storesOne = [
        DrinkProduct(title: "Blue Beer", price: "$8", imageName: "beerone.png"),
        DrinkProduct(title: "Red Beer", price: "$10", imageName: "beerTree.png"),
        DrinkProduct(title: "Fruit Beer", price: "$12", imageName: "beerTwo.png")
    ]
    
    private let storesTwo = [
    DrinkProduct(title: "Sweet Wine", price: "$12.50", imageName: "one"),
    DrinkProduct(title: "Bitter Wine", price: "$14.40", imageName: "two"),
    DrinkProduct(title: "Middle Wine", price: "$16.30", imageName: "three")
    ]
    
    private let storesThree = [
    DrinkProduct(title: "Volka", price: "18", imageName: "squareVolka copy"),
    DrinkProduct(title: "Gray Goose", price: "$22", imageName: "greygoosevolka"),
    DrinkProduct(title: "Absolute", price: "$26", imageName: "absoluteVolka")
    ]
    
    
    private let storesFour = [DrinkProduct]()
    
    func getStores() -> [Store] {
    return stores
        
    }
    
    func getDrinkProduct(forDrinkTitle title:String) -> [DrinkProduct] {
        switch title {
        case "BEER":
           return getBeer()
        case "WINE":
            return getWine()
        case "Liquor":
            return getLiquor()
        default:
            return getBeer()
            
        }
        
    }
    
    func getBeer() -> [DrinkProduct] {
        return storesOne
    }
    
    func getWine() -> [DrinkProduct] {
        return storesTwo
    }
    
    func getLiquor() -> [DrinkProduct] {
        return storesThree
    }
}
