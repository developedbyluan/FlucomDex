//
//  FetchedPokemon.swift
//  FlucomDex
//
//  Created by Tran Luan on 18/7/25.
//

import Foundation

struct FetchedPokemon: Decodable {
    let id: Int16
    let name: String
    let types: [String]
    let sprite: URL
    let shiny: URL
    let attack: Int16
    let defense: Int16
    let hp: Int16
    let speed: Int16
    let specialAttack: Int16
    let specialDefense: Int16
    
    enum CodingKeys: CodingKey {
        case id
        case name
        case types
        case sprite
        case shiny
        case attack
        case defense
        case hp
        case speed
        case specialAttack
        case specialDefense
    }
    
    init(from decoder: any Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.id = try container.decode(Int16.self, forKey: .id)
        self.name = try container.decode(String.self, forKey: .name)
        self.types = try container.decode([String].self, forKey: .types)
        self.sprite = try container.decode(URL.self, forKey: .sprite)
        self.shiny = try container.decode(URL.self, forKey: .shiny)
        self.attack = try container.decode(Int16.self, forKey: .attack)
        self.defense = try container.decode(Int16.self, forKey: .defense)
        self.hp = try container.decode(Int16.self, forKey: .hp)
        self.speed = try container.decode(Int16.self, forKey: .speed)
        self.specialAttack = try container.decode(Int16.self, forKey: .specialAttack)
        self.specialDefense = try container.decode(Int16.self, forKey: .specialDefense)
    }
}
