//
//  HeroesView.swift
//  heroes
//
//  Created by matvey on 20.09.2022.
//

import SwiftUI

struct HeroesView: View {
    @ObservedObject var viewModel = HeroesViewModel()
    var body: some View {
        NavigationView{
            List(viewModel.heroes){ hero in
                HStack{
                    VStack(alignment: .leading){
                        NavigationLink(destination: HeroView(id: hero.id)){
                            Text(hero.name)
                        }
                    }
                }
            }.navigationTitle("Heroes")
        }
    }
}

struct HeroesView_Previews: PreviewProvider {
    static var previews: some View {
        HeroesView()
    }
}
