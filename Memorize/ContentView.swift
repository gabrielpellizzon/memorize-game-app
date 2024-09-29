//
//  ContentView.swift
//  Memorize
//
//  Created by Macbook-Pro on 29/09/24.
//

import SwiftUI

struct ContentView: View {
    let emojis = ["👻", "🎃", "💀", "🕷️"]
    
    var body: some View {
        HStack {
            ForEach(emojis.indices, id: \.self) { index in
                CardView(content: emojis[index])
            }
        }
        .foregroundColor(.orange)
        .padding()
    }
}

struct CardView: View {
    @State var isFaceUp = false
    var content: String
    
    var body: some View {
        ZStack {
        let baseRectangle =  RoundedRectangle(cornerRadius: 15)
            if isFaceUp {
                baseRectangle.fill(.white)
                baseRectangle.strokeBorder(lineWidth: 2)
                Text(content).font(.largeTitle)
            } else {
                baseRectangle.fill()
            }
        }.onTapGesture {
            isFaceUp.toggle()
        }
    }
}

#Preview {
    ContentView()
}
