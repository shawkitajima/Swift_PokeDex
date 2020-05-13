//
//  PokemonImage.swift
//  Learning_Swift_With_Pokemon
//
//  Created by Shaw Kitajima on 5/13/20.
//  Copyright © 2020 Shaw Kitajima. All rights reserved.
//

import SwiftUI

struct PokemonImage: View {
    var image: Image
    var body: some View {
        image
            .clipShape(Circle())
            .overlay(Circle().stroke(Color.white, lineWidth: 4))
            .shadow(radius: 10)
    }
}

struct PokemonImage_Previews: PreviewProvider {
    static var previews: some View {
        PokemonImage(image: Image("001"))
    }
}
