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
    @State private var query = ""
    
    func updateFilter(query: String) -> [Pokemon] {
        if query == "" {
            return self.pokemons}
        else {
            return self.pokemons.filter{$0.name["english"]!.contains(query)}
        }
    }
    
    var body: some View {
        NavigationView {
            List {
                TextField("Search by English Name", text: $query)
                ForEach(updateFilter(query: self.query)) { pokemon in
                    //Navigation Start
                    if
                        // We need to check if we have a valid description index or else the app will crash
                        self.descriptions.indices.contains(pokemon.id - 1) {
                            NavigationLink(destination: PokemonDetail(
                                pokemon: pokemon, description: self.descriptions[pokemon.id - 1]
                            )) {
                                PokemonRow(pokemon: pokemon)
                            }
                            //Navigation End
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
