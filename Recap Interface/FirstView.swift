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
        
       
          
                
            HStack {
                Image(systemName: symbol)
                    .foregroundColor(.cyan).padding(.leading, 10)
                
                VStack{
                    
                    Text(title)
                        .foregroundStyle(.white)
                        .font(.system(size: 16))
                        .padding(.trailing, 23)
                        .padding(.top, 8)
                        .bold()
                    
                    Text(descriptions)
                        .foregroundStyle(.lightGrey)
                        .font(.system(size: 14))
                        .padding(.trailing, 23)
                        .padding(.bottom, 8)
                }
            }
            .background(.darkGrey)
            .cornerRadius(40)
        
    
    }
}

#Preview {
    FirstView(title: "Climate", descriptions: "16.0-20.5C°", symbol: "fan.fill")
}
