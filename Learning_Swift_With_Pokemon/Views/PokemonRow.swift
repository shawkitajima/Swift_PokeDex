//
//  PokemonRow.swift
//  Learning_Swift_With_Pokemon
//
//  Created by Shaw Kitajima on 5/14/20.
//  Copyright © 2020 Shaw Kitajima. All rights reserved.
//

import SwiftUI

struct PokemonRow: View {
    var pokemon: Pokemon
    var body: some View {
        HStack {
            PokemonImage(image: pokemon.image)
            Text(pokemon.name["japanese"]!)
        }
    }
}

struct PokemonRow_Previews: PreviewProvider {
    static var previews: some View {
        PokemonRow(pokemon: pokemonData[0] )
    }
}
