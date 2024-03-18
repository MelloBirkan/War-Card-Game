//
//  CardLogicDO.swift
//  War Card Game
//
//  Created by Marcello Gonzatto Birkan on 18/03/24.
//

import Foundation

struct CardLogicDO {
  var playerCard: String
  var cpuCard : String
  var playerScore = 0
  var cpuScore = 0
  
  init(playerCard: String = "back", cpuCard: String = "back", playerScore: Int = 0, cpuScore: Int = 0) {
    self.playerCard = playerCard
    self.cpuCard = cpuCard
    self.playerScore = playerScore
    self.cpuScore = cpuScore
  }
  
  mutating func deal() {
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
