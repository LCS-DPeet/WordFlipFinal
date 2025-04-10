//
//  ContentView.swift
//  WordFlipFinal
//
//  Created by Danika Peet on 2025-04-09.
//
import SwiftUI

struct OpeningView: View {
    var body: some View {
        
        // sets up the naviagtion links
        NavigationStack {
            
            ZStack{
                Image("MonkeyBackground")
                
                VStack {
                    
                    Text("WordFlip")
                        .font(.system(size: 100))
                        .fontWeight(.bold)
                        .foregroundStyle(.white)
                    
                    VStack {
                        //nav links to open pages with buttons
                        NavigationLink("Play") {
                            MatchView()
                        }
                        
                        .navigationTitle("Home")
                        
                        NavigationLink("Practice") {
                            OpeningView()
                        }
                        NavigationLink("Credits") {
                            OpeningView()
                        }
                        
                        .navigationTitle("Home")
                        
                        // frame to get monkey to hold words
                    } .frame(height: 105)
                }
            }
        }
    }
}

#Preview {
    OpeningView()
}

