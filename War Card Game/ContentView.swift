//
//  ContentView.swift
//  War Card Game
//
//  Created by Omer Cagri Sayir on 27.11.2023.
//

import SwiftUI

struct ContentView: View {
    var playerCard = "card7"
    var cpuCard = "card13"
    
    var playerScore = 1
    var cpuScore = 1
    
    var body: some View {
        
        ZStack {
            Image("background-plain").resizable().ignoresSafeArea()
            
            VStack {
                Spacer()
                
                Image("logo")
                
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
        print("Deal cards")
    }
}

#Preview {
    ContentView()
}
