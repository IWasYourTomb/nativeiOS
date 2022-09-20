//
//  Image.swift
//  heroes
//
//  Created by matvey on 20.09.2022.
//

import SwiftUI
import URLImage

struct Img: View {
    var url: String?

    var body: some View {
        guard let u = URL(string: url ?? "") else {
            return AnyView(Text("Loading..."))
        }
        return AnyView(URLImage(url:u){ image in
            image
                .resizable()
                .aspectRatio(contentMode: .fit)
        })
    }
}

