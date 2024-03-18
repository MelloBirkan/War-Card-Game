//
//  ContentView.swift
//  War Card Game
//
//  Created by Marcello Gonzatto Birkan on 16/03/24.
//

import SwiftUI

struct ContentView: View {
  var playerCard: Image = Image(.card7)
  var cpuCard: Image = Image(.card13)
  var playerScore = 0
  var cpuScore = 0
  
    var body: some View {
        ZStack {
          Image(.backgroundPlain)
            .resizable()
            .ignoresSafeArea()
          
          VStack(spacing: 40, content: {
            Image(.logo)
            
            HStack(spacing: 50, content: {
              playerCard
              
              cpuCard
            })
            
            Button(action: {}, label: {
              Image(.button)
            })
            
            HStack(spacing: 120, content: {
              statsView(player: "Player", points: playerScore)
              
              statsView(player: "CPU", points: cpuScore)
            })
          })
        }
    }
  
  func deal() {
    print("Deal")
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
