//
//  ContentView.swift
//  War Card Game
//
//  Created by Marcello Gonzatto Birkan on 16/03/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
          Image(.backgroundPlain)
          
          VStack(spacing: 30, content: {
            Image(.logo)
            
            HStack(spacing: 40, content: {
              Image(.card14)
              
              Image(.card10)
            })
            
            Button(action: {}, label: {
              Image(.button)
            })
            
            HStack(spacing: 120, content: {
              statsView(player: "Player", points: 0)
              statsView(player: "CPU", points: 0)
            })
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
  
  Text("\(points)")
    .font(.title)
})
.foregroundStyle(.white)
}
