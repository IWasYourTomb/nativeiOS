//
//  Images.swift
//  heroes
//
//  Created by matvey on 20.09.2022.
//

import Foundation

struct Images: Codable {
    let large: String
    
    enum CodingKeys: String, CodingKey {
        case large = "lg"
    }
}
