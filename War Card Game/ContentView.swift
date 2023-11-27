//
//  ContentView.swift
//  War Card Game
//
//  Created by Omer Cagri Sayir on 27.11.2023.
//

import SwiftUI

struct ContentView: View {
    
    @State var playerCard: String = "card7"
    @State var cpuCard: String = "card13"
    
    @State var playerScore: Int = 0
    @State var cpuScore: Int = 0
    
    var body: some View {
        
        ZStack {
            Image("background-plain").resizable().ignoresSafeArea()
            
            VStack {
                Spacer()
                
                Button(action: {
                    reset()
                }, label: {
                    Image("logo")
                })
                
                Spacer()
                
                HStack {
                    Spacer()
                    
                    Image(playerCard)
                    
                    Spacer()
                    
                    Image(cpuCard)
                    
                    Spacer()
                }
                
                Spacer()
                
                Button(action: {
                    deal()
                }, label: {
                    Image("button")
                })
                
                Spacer()
                
                HStack{
                    
                    Spacer()
                    
                    VStack {
                        Text("Player").font(.headline).padding(.bottom, 10.0)
                        Text(String(playerScore)).font(.largeTitle)
                    }
                    
                    Spacer()
                    
                    VStack {
                        Text("CPU").font(.headline).padding(.bottom, 10)
                        Text(String(cpuScore)).font(.largeTitle)
                    }
                    
                    Spacer()
                    
                }.foregroundColor(.white)
                
                Spacer()
            }
        }
        
    }
    
    func deal() -> Void {
        // Randomize the players card
        let playerCardNumber = Int.random(in: 2...14)
        playerCard = "card" + String(playerCardNumber)
        // Randomize cpus card
        let cpuCardNumber = Int.random(in: 2...14)
        cpuCard = "card" + String(cpuCardNumber)
        // update the score
        if playerCardNumber > cpuCardNumber { playerScore+=1 }
        else if cpuCardNumber > playerCardNumber { cpuScore+=1 }
    }
    
    func reset() -> Void {
        playerScore = 0
        cpuScore = 0
    }
}

#Preview {
    ContentView()
}
