//
//  Pokemon.swift
//  Learning_Swift_With_Pokemon
//
//  Created by Shaw Kitajima on 5/13/20.
//  Copyright © 2020 Shaw Kitajima. All rights reserved.
//

import SwiftUI
import Foundation

struct Pokemon: Identifiable, Codable {
    var id: Int
    var name: Dictionary <String, String>
    var type: Array <String>
    var base: Dictionary <String, Int>
}

extension Pokemon {
    var image: Image {
        ImageStore.shared.image(name: String(format: "%03d", id))
    }
}


