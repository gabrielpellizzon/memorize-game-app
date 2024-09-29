//
//  ContentView.swift
//  Memorize
//
//  Created by Macbook-Pro on 29/09/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        HStack {
            CardView(isFaceUp: true)
            CardView()
            CardView()
            CardView()
        }
        .foregroundColor(.orange)
        .padding()
    }
}

struct CardView: View {
    var isFaceUp: Bool = false
    
    var body: some View {
        ZStack(content: {
            if isFaceUp {
                RoundedRectangle(cornerRadius: 15)
                    .foregroundColor(.white)
                RoundedRectangle(cornerRadius: 15)
                    .strokeBorder(lineWidth: 2)
                Text("👻").font(.largeTitle)
            } else {
                RoundedRectangle(cornerRadius: 15)
            }
        })
    }
}

#Preview {
    ContentView()
}
