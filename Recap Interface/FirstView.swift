//
//  FirstView.swift
//  Recap Interface
//
//  Created by Edna Sung on 2024-01-10.
//

import SwiftUI

struct FirstView: View {
    
    let title: String
    let descriptions: String
    let symbol: String
    
    var body: some View {
        
        ZStack {
            Rectangle()
                .foregroundColor(.darkGrey)
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
                        .foregroundStyle(.lightGrey)
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
