//
//  ContentView.swift
//  Recap Interface
//
//  Created by Edna Sung on 2024-01-10.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        VStack{
            Text("My Home")

            HStack {
                FirstView(title: "Climate", descriptions: "", symbol: <#T##String#>)
               
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
