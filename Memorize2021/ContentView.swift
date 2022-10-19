//
//  ContentView.swift
//  Memorize2021
//
//  Created by Fernando Gnadt de Oliveira on 19/10/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        HStack{
            CardView()
            CardView()
            CardView()
            CardView()
        }
        .padding(.horizontal)
        .foregroundColor(.red)
    }
}

struct CardView: View {
    @State var isFaceUp: Bool = true
    
    var body: some View {
        ZStack {
            let shape =  RoundedRectangle(cornerRadius: 25.0)
            if isFaceUp{
                shape.fill().foregroundColor(.white)
                shape.stroke(lineWidth: 3)
                Text("🛴").font(.largeTitle)
            } else {
               shape.fill()
                }
        }.onTapGesture {
            isFaceUp = !isFaceUp
            }
        }
    }


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .preferredColorScheme(.dark)
        ContentView()
            .preferredColorScheme(.light)
    }
}
