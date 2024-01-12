//
//  FirstView.swift
//  Recap Interface
//
//  Created by Edna Sung on 2024-01-10.
//

import SwiftUI

struct FirstView: View {
    
    let darkGray = Color(
        hue: 0/360.0,
        saturation: 0.0,
        brightness: 0.45
    )
    let lightGray = Color(
        hue: 0/360.0,
        saturation: 0.0,
        brightness: 0.73
    )
    
    let title: String
    let descriptions: String
    let symbol: String
    
    var body: some View {
        
        ZStack {
            Rectangle()
                .foregroundStyle(darkGray)
                .frame(width: 150, height: 50)
                .cornerRadius(30)
                
            HStack {
                Image(systemName: symbol)
                    .foregroundColor(.cyan)
                
                VStack{
                    
                    Text(title)
                        .foregroundStyle(.white)
                        .padding(.trailing, 33)
                        .bold()
                    
                    Text(descriptions)
                        .foregroundStyle(lightGray)
                        .font(.system(size: 14))
                        .padding(.trailing, 13)
                }
            }
        }
        
    
    }
}

#Preview {
    FirstView(title: "Climate", descriptions: "16.0-20.5C°", symbol: "fan.fill")
}
