//
//  EmojiMemoryGame.swift
//  Memorize2021
//
//  Created by Fernando Gnadt de Oliveira on 21/10/22.
//

import SwiftUI



class EmojiMemoryGame: ObservableObject {
   static let emojis = ["🛴","✈️","🚜","🚔"]
    
    static func createMemoryGame() -> MemoryGame<String> {
        MemoryGame<String>(numberOfPairsOfCards: 4) { pairIndex in
            emojis[pairIndex]
        }
    }
    
    @Published private var model: MemoryGame<String> = createMemoryGame()
    
    //MARK: Acess to the Model
    var cards: Array<MemoryGame<String>.Card>{
        return model.cards
    }
    
    // MARK: Intent(s)
    func choose(_ card: MemoryGame<String>.Card){
        objectWillChange.send()
        model.choose(card)
    }
}
