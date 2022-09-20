//
//  HeroView.swift
//  heroes
//
//  Created by matvey on 20.09.2022.
//

import SwiftUI
import URLImage
struct HeroView: View {
    var id: Int?
    
    @ObservedObject var viewModel = HeroViewModel()
    
    var body: some View {
        VStack{
            Img(url: viewModel.hero?.images?.large ?? "" )
            Text(viewModel.hero?.name ?? "")
                .font(.title)
            Text("Power \(viewModel.hero?.powerstats?.power ?? 0)")
                .font(.title)
            
        }.onAppear{
            self.viewModel.getHero(id: self.id ?? 0)
        }
    }
}


struct HeroView_Previews: PreviewProvider {
    static var previews: some View {
        HeroView()
    }
}
