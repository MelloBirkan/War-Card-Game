//
//  ContentView.swift
//  War Card Game
//
//  Created by Marcello Gonzatto Birkan on 16/03/24.
//

import SwiftUI

struct ContentView: View {
  @State var playerCard = "card2"
  @State var cpuCard = "card12"
  @State var playerScore = 0
  @State var cpuScore = 0
  
    var body: some View {
        ZStack {
          Image(.backgroundPlain)
            .resizable()
            .ignoresSafeArea()
          
          VStack(content: {
            Spacer()
            Image(.logo)
            Spacer()
            HStack(content: {
              Spacer()
              Image(playerCard)
              Spacer()
              Image(cpuCard)
              Spacer()
            })
            
            Spacer()
            Button(action: {
              deal()
            }, label: {
              Image(.button)
            })
            
            Spacer()
            HStack(content: {
              Spacer()
              statsView(player: "Player", points: playerScore)
              Spacer()
              statsView(player: "CPU", points: cpuScore)
              Spacer()
            })
            
            Spacer()
          })
        }
    }
  
  func deal() {
    // Randomize the players card
    let playerCardValue = Int.random(in: 2...14)
    playerCard = "card" + String(playerCardValue)
    // Randomize the cpu card
    let cpuCardValue = Int.random(in: 2...14)
    cpuCard = "card" + String(cpuCardValue)
    // Update te score
    (playerCardValue > cpuCardValue)
    ? (playerScore += 1)
    : (cpuScore += 1)
  }
}

#Preview {
    ContentView()
}

func statsView(player: String, points: Int) -> some View {
  VStack(spacing: 15, content: {
  Text(player)
      .font(.headline)
  
  Text("\(points)")
    .font(.largeTitle)
})
.foregroundStyle(.white)
}
