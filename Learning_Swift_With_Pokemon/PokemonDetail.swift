//
//  PokemonDetail.swift
//  Learning_Swift_With_Pokemon
//
//  Created by Shaw Kitajima on 5/13/20.
//  Copyright © 2020 Shaw Kitajima. All rights reserved.
//

import SwiftUI

struct PokemonDetail: View {
    var pokemon: Pokemon
    
    var body: some View {
        VStack(alignment: .center, spacing: 21.0) {
            VStack(alignment: .center) {
                PokemonImage(image: pokemon.image)
                Text("Pokemon Id: \(pokemon.id)")
                Text("Japanese name: \(pokemon.name["japanese"]!)")
                Text("English name: \(pokemon.name["english"]!)")
            }
            HStack(alignment: .top, spacing: 50.0) {
                VStack(alignment: .leading) {
                    Text("Types:")
                        .font(.headline)
                        .multilineTextAlignment(.leading)
                    ForEach(pokemon.type, id: \.self) {type in
                        Text(type)
                            .multilineTextAlignment(.leading)
                    }
                }
                VStack(alignment: .leading) {
                    Text("Base Stats:")
                        .font(.headline)
                        .multilineTextAlignment(.leading)
                    ForEach(pokemon.base.sorted(by: <), id: \.key) { key, value in
                        Text("\(key): \(String(value))")
                            .multilineTextAlignment(.leading)
                    }
                }
            }
            Spacer()
        }
    }
}

struct PokemonDetail_Previews: PreviewProvider {
    static var previews: some View {
        PokemonDetail(pokemon: pokemonData[0])
    }
}

//"HP": 45,
//"Attack": 49,
//"Defense": 49,
//"Sp. Attack": 65,
//"Sp. Defense": 65,
//"Speed": 45
