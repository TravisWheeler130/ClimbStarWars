//
//  Starship.swift
//  StarWarsAPI
//
//  Created by Travis Wheeler on 10/3/19.
//  Copyright © 2019 Travis Wheeler. All rights reserved.
//

import Foundation

struct TopLevelDict: Decodable {
    let starships: [Starship]
}

struct Starship: Decodable {
    let name: String
    let model: String
    let cost: String
    let speed: String
    let films: [String]
    
    enum CodingKeys: String, CodingKey {
        case name
        case model
        case cost = "cost_in_credits"
        case speed = "max_atmosphering_speed"
        case films
    }
}
