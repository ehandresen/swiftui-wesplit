//
//  ContentView.swift
//  WeSplit
//
//  Created by Eirik Andresen on 02/09/2024.
//

import SwiftUI

struct ContentView: View {
    let students = ["harry", "hermine", "ron"]
    @State private var selectedStudent = "harry"
    
    var body: some View {
        NavigationStack {
            Form {
                Picker("select your student", selection: $selectedStudent)  {
                    ForEach(students, id: \.self) {
                        Text($0)
                    }
                }
            }
        }
        .navigationTitle("select a student")
        
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
