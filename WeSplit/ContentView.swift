//
//  ContentView.swift
//  WeSplit
//
//  Created by Eirik Andresen on 02/09/2024.
//

import SwiftUI

struct ContentView: View {
    @State private var name: String = ""
    
    var body: some View {
        Form {
            
            TextField("Enter your name", text: $name) // $name means two way binding, the value is read, but also written back
            Text("your name is \(name)")
        }
    }
}

struct MyForm: View {
    var body: some View {
        NavigationStack {
            Form {
                Section {
                    Text("Hello world")
                }
                
                Section {
                    Text("Hello world")
                    Text("Hello world")
                    Text("Hello world")
                }
                
                Section {
                    Text("Hello world")
                    Text("Hello world")
                    Text("Hello world")
                    Text("Hello world")
                }
            }
            .navigationTitle("SwiftUI")
            // for smaller title:
            // .navigationBarTitleDisplayMode(.inline)
        }
    }
}

#Preview {
    ContentView()
}
