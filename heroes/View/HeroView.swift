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
            Text(viewModel.hero?.name ?? "")
                .font(.title)
            Img(url: viewModel.hero?.images?.large ?? "" )
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
