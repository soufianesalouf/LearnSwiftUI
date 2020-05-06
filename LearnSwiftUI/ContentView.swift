//
//  ContentView.swift
//  LearnSwiftUI
//
//  Created by Soufiane Salouf on 5/6/20.
//  Copyright © 2020 Soufiane Salouf. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    // Constants
    let gender = ["Male", "Female"]
    
    // Mutating var
    @State private var countTaps = 2
    @State private var name = ""
    @State private var defaultGender = "Male"
    
    var body: some View {
        NavigationView {
            Form {
                Section {
                    
                    // Text Field binded with property name
                    TextField("Enter your name", text: $name)
                    
                    // Show Simple Text
                    Text("The name entered is : \(name)")
                    Text("Tap on the button to increase the value")
                    Text("\(countTaps)")
                    
                    Picker("Gender", selection: $defaultGender) {
                        ForEach(0 ..< gender.count) {
                            Text(self.gender[$0])
                        }
                    }
                }
                
                Group {
                    Button("Tap here") {
                        self.countTaps += 10
                    }
                }
            }
        .navigationBarTitle("SwiftUI")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
