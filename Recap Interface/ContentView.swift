//
//  ContentView.swift
//  Recap Interface
//
//  Created by Edna Sung on 2024-01-10.
//

import SwiftUI

struct ContentView: View {
    
    let firstGradientColors = Gradient(colors: [.lightBlue, .deepBlue, .deepPurple, .clear])
    
    let secondGradientColors = Gradient(colors: [.greyYellow, .deepPurple, .clear])

    
    var body: some View {
        
       
        
        ZStack {
            
            // Background
            Color.black
                .ignoresSafeArea()
            
            //First gradient
            RadialGradient(
                gradient: firstGradientColors,
                center: UnitPoint(x: 0.1, y: 0),
                startRadius: 0,
                endRadius: 1000
            )
            .ignoresSafeArea()
            
            //Second gradient
            RadialGradient(
                gradient: secondGradientColors,
                center: UnitPoint(x: 1, y: 1),
                startRadius: 0,
                endRadius: 900
            )
            .ignoresSafeArea()
            
            // Foreground
            VStack{
                Text("My Home")

                HStack {
                    FirstView(title: "Climate", descriptions: "16.0-20.5C°", symbol: "fan.fill")
                }
            }
            .padding()
        }

    }
}

#Preview {
    ContentView()
}
