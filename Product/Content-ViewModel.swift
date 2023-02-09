//
//  Content-ViewModel.swift
//  Product
//
//  Created by Jelson J on 08/02/2023.
//

import Foundation
import SwiftUI


extension ContentView{
    @MainActor class ViewModel: ObservableObject {
        @Published var isTurnedOn: Bool = false
        @Published var counter = 0
        @Published var itemList = [Store]()
        
        func increment(){
            counter += 1
        }
        
        func addItem(){
            let randomItem = ["C#","HTML5","SASS","NODE"]
            let item = randomItem.randomElement()!
            
            let addNewItem = Store(name: item, desc: "Store: \(itemList.count + 1)")
            
            withAnimation{
                itemList.insert(addNewItem, at: 0)
            }
            
        }
    }
}
