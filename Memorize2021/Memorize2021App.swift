//
//  Memorize2021App.swift
//  Memorize2021
//
//  Created by Fernando Gnadt de Oliveira on 19/10/22.
//

import SwiftUI

@main
struct Memorize2021App: App {
    let game = EmojiMemoryGame()
    
    var body: some Scene {
        WindowGroup {
            ContentView(viewModel: game)
        }
    }
}
