//
//  Description.swift
//  Learning_Swift_With_Pokemon
//
//  Created by Shaw Kitajima on 5/14/20.
//  Copyright © 2020 Shaw Kitajima. All rights reserved.
//

import SwiftUI
import Foundation

struct Description: Codable {
    var _id: String
    var pkdx_id: Int
    var national_id: Int
    var name: String
    var __v: Int
    var image_url: String
    var description: String
    var art_url: String
    var types: Array <String>
    var evolutions = [Evolution]()
}

struct Evolution: Codable {
    var level: Int?
    var method: String
    var to: String
    var _id: String
}
