//
//  MatchView.swift
//  WordFlipFinal
//
//  Created by Danika Peet on 2025-04-09.
//

import SwiftUI

struct MatchView: View {
    //MARK: Stored Properties:
    
    //initilize empty array of cards
    @State private var cards: [Card] = []
    
    //Tracks the card, nil= no cards flipped when opened
    @State private var firstFlipIndex: Int? = nil
    
    //initilizes the score starting a 0
    @State private var score = 0
    
    //MARK: Start of interface
    var body: some View {
        
        ZStack {
        // placeholder rectangle
        Rectangle()
        
            VStack {
                HStack {
                    ZStack {
                        Rectangle()
                            .fill(.red)
                            .cornerRadius(10)
                            .frame(width: 80, height: 40)
                            .padding()
                        
                        // score bar
                        Text("Score: \(score)")
                            .foregroundStyle(.white)
                            .font(.title3)
                            .padding(20)
                    }
                        
                    Spacer()
                    
                    //New Game Bar
                    Button("New Game"){
                        newGame()
                    }
                    .padding(20)
                    
                    
                    
                }
                
            }
        }
    }
    //MARK: Functions

    func newGame() {
        //placeholder cards until I set up the card faces
        let images = ["h","g","i","d"]
        
        //Copies the card image, shuflles it, then creates the card
        let newDeck = (images + images).shuffled().map {
            Card(image: $0) }
        //puts cards into order on screen, lets the first one stay
        cards = newDeck
        firstFlipIndex = nil
        score = 0
        
        
    }
}



#Preview {
    MatchView()
}
