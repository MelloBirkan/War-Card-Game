//
//  ContentView.swift
//  War Card Game
//
//  Created by Marcello Gonzatto Birkan on 16/03/24.
//

import SwiftUI

struct ContentView: View {
  @State private var oo = CardLogicDO()
    
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
              Image(oo.playerCard)
              Spacer()
              Image(oo.cpuCard)
              Spacer()
            })
            
            Spacer()
            Button(action: {
              oo.deal()
            }, label: {
              Image(.button)
            })
            
            Spacer()
            HStack(content: {
              Spacer()
              statsView(player: "Player", points: oo.playerScore)
              Spacer()
              statsView(player: "CPU", points: oo.cpuScore)
              Spacer()
            })
            
            Spacer()
          })
        }
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
