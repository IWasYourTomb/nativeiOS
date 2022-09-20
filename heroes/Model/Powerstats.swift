//
//  Powerstats.swift
//  heroes
//
//  Created by matvey on 20.09.2022.
//

import Foundation

struct Powerstats: Codable{
   let intelligence: Int
   let strength: Int
   let speed: Int
   let durability: Int
   let power: Int
   let combat: Int
    
    enum CodingKeys: String, CodingKey {
        case intelligence
        case strength
        case speed
        case durability
        case power
        case combat
    }
}
