//
//  HeroesModel.swift
//  heroes
//
//  Created by matvey on 20.09.2022.
//

import Foundation

struct Hero: Codable, Identifiable {
    let id: Int
    let name: String
    let images: Images?
    let powerstats: Powerstats?
    
    enum CodingKeys: String, CodingKey {
        case id
        case name
        case images
        case powerstats
    }
}
