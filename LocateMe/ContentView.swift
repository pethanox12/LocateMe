//
//  ContentView.swift
//  LocateMe
//
//  Created by Adrian Talbot on 03/11/2024.
//

import SwiftUI

struct ContentView: View {
    @Environment(BusinessModel.self) var model
    
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, world!")
            
            Button("Click me") {
                // ToDo
                print("Hello")
                model.getLocation()
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
