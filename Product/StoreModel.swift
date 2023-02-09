//
//  StoreModel.swift
//  Product
//
//  Created by Jelson J on 08/02/2023.
//

import Foundation

struct Store: Identifiable, Codable{
    var id = UUID()
    var name: String
    var desc:String
    
    static var exampleStore = Store(name: "Java", desc: "I love javascript")
    
}
