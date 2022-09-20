//
//  HeroesService.swift
//  heroes
//
//  Created by matvey on 20.09.2022.
//

import Foundation
import Alamofire
import Combine

class HeroesService {
    let url = "https://cdn.rawgit.com/akabab/superhero-api/0.2.0/api/"
    
    func fetch() -> AnyPublisher<[Hero], AFError> {
        let publisher = AF.request("\(url)all.json").publishDecodable(type: [Hero].self)
        return publisher.value()
    }
    
    func get(id: Int)  -> AnyPublisher<Hero, AFError> {
        let publisher = AF.request("\(url)id/\(id).json").publishDecodable(type: Hero.self)
        return publisher.value()
    }
}
