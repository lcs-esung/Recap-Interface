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
                    .foregroundColor(.white)

                HStack {
                    FirstView(title: "Climate", descriptions: "16.0-20.5C°", symbol: "fan.fill")
                }
            }
            .padding()
        }

    }
}

#Preview {
    
    
    TabView(selection: .constant(1)) {
        
        ContentView()
            .tabItem {
                Image(systemName: "house.fill")
                Text("Home")
            }
            .tag(1)
        
        Text("Automation")
            .tabItem {
                Image(systemName: "clock.fill")
                Text("World Clock")
            }
            .tag(2)
        
        Text("Discover")
            .tabItem {
                Image(systemName: "star.fill")
                Text("Alarm")
            }
            .tag(3)
    }
    
    .accentColor(.white)
    .preferredColorScheme(.dark)
    
}
