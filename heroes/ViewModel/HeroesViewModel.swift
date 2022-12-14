//
//  HeroesViewModel.swift
//  heroes
//
//  Created by matvey on 20.09.2022.
//

import Foundation
import Combine

class HeroesViewModel: ObservableObject{
    @Published var heroes: [Hero] = []
    var cancellation: AnyCancellable?
    let service = HeroesService()
    
    init(){
        fetchHeroes()
    }
    
    func fetchHeroes(){
        cancellation = service.fetch()
            .mapError({ (error) -> Error in
                       print(error)
                       return error
                   })
            .sink(receiveCompletion: {_ in}, receiveValue: { heroes in
                self.heroes = heroes
            })
    }
}
