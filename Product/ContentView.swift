//
//  ContentView.swift
//  Product
//
//  Created by Jelson J on 08/02/2023.
//

import SwiftUI

struct ContentView: View {
    @StateObject private var vm = ViewModel()
    var body: some View {
        VStack {
            Text("Add a new Language")
            Toggle("Toggle Switch", isOn: $vm.isTurnedOn)
                .padding()
            
            
            HStack{
                Button("Add"){
                    vm.increment()
                }
                Text("\(vm.counter)")
                    .bold()
                    .foregroundColor(.green)
                    .padding()
            }
            List(vm.itemList){ item in
                HStack{
                    Text(item.name)
                    Spacer()
                    Text(item.desc)
                }
            }
            .listStyle(.plain)
            .background(.thinMaterial)
            
            Button("Add Item"){
                vm.addItem()
            }
            .padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
