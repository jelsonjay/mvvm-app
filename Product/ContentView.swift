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
            Toggle("Toggle Switch", isOn: $vm.isTurnedOn)
            .padding()
        }
        
        HStack{
            Button("Add"){
                vm.increment()
            }
            Text("\(vm.counter)")
                .bold()
                .foregroundColor(.green)
                .padding()
        }
       
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
