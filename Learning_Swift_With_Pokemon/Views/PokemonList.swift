//
//  PokemonList.swift
//  Learning_Swift_With_Pokemon
//
//  Created by Shaw Kitajima on 5/14/20.
//  Copyright © 2020 Shaw Kitajima. All rights reserved.
//

import SwiftUI

struct PokemonList: View {
    var pokemons: [Pokemon]
    var descriptions: [Description]
    var body: some View {
        NavigationView {
            List {
                ForEach(pokemons) { pokemon in
                    NavigationLink(destination: PokemonDetail(
                        pokemon: pokemon, description: self.descriptions[pokemon.id - 1]
                            )) {
                        PokemonRow(pokemon: pokemon)
                    }
                }
            }
            .navigationBarTitle(Text("ポケモン図鑑"))
        }
    }
}

struct PokemonList_Previews: PreviewProvider {
    static var previews: some View {
        PokemonList(
            pokemons: pokemonData, descriptions: descriptionData)
    }
}
