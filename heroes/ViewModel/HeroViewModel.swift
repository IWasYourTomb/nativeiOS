//
//  ViewModel.swift
//  heroes
//
//  Created by matvey on 20.09.2022.
//

import Foundation
import Combine

class HeroViewModel: ObservableObject {

    @Published var hero: Hero?
    var cancellation: AnyCancellable?
    let service = HeroesService()
   
    func getHero(id: Int) {
       cancellation = service.get(id: id)
       .mapError({ (error) -> Error in
           print(error)
           return error
       })
       .sink(receiveCompletion: { _ in },
             receiveValue: { hero in
               self.hero = hero
       })
   }
}
