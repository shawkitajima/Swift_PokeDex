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
    var description: Description
    
    func first_half(_ input: String) -> String {
        let first_half = input.prefix(input.count / 2)
        return String(first_half)
    }
    
    var body: some View {
        VStack(alignment: .center, spacing: 25.0) {
            VStack(alignment: .center) {
                PokemonImage(image: pokemon.image)
                Text("Id: \(pokemon.id)")
                Text(pokemon.name["japanese"]!)
                    .font(.headline)
                    .fontWeight(.heavy)
                Text(pokemon.name["english"]!)
                    .font(.headline)
                    .fontWeight(.bold)
            }
            HStack(alignment: .top) {
                VStack(alignment: .leading) {
                    Text("Types:")
                        .font(.headline)
                        .multilineTextAlignment(.leading)
                    ForEach(pokemon.type, id: \.self) {type in
                        Text(type)
                            .multilineTextAlignment(.leading)
                    }
                }
                .padding(.leading)
                Spacer()
                VStack(alignment: .trailing) {
                    Text("Base Stats:")
                        .font(.headline)
                        .multilineTextAlignment(.leading)
                    ForEach(pokemon.base.sorted(by: <), id: \.key) { key, value in
                        Text("\(key): \(String(value))")
                            .multilineTextAlignment(.leading)
                    }
                }
            }
                .padding([.top, .leading, .trailing])
            Text(first_half(description.description))
                .multilineTextAlignment(.center)
                .padding(.horizontal)
            Spacer()
        }
        .padding(0.0)
        .frame(width: nil)
        .navigationBarTitle(Text(pokemon.name["japanese"]!), displayMode: .inline)
    }
}

struct PokemonDetail_Previews: PreviewProvider {
    static var previews: some View {
        PokemonDetail(
            pokemon: pokemonData[0],
            description: descriptionData[0]
        )
            .padding(.top)
    }
}
