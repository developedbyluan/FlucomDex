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
        //        case sprite
        //        case shiny
        //        case attack
        //        case defense
        //        case hp
        //        case speed
        //        case specialAttack
        //        case specialDefense
        case sprites
        case stats
        
        enum TypeDictionaryKeys: CodingKey {
            case type
            
            enum TypeKeys: CodingKey {
                case name
            }
        }
        
        enum StatDictionaryKeys: CodingKey {
            case baseStat
        }
        
        enum SpriteKeys: String, CodingKey {
            case sprite = "frontDefault"
            case shiny = "frontShiny"
        }
    }
    
    init(from decoder: any Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        id = try container.decode(Int16.self, forKey: .id)
        name = try container.decode(String.self, forKey: .name)
        types = try container.decode([String].self, forKey: .types)
        sprite = try container.decode(URL.self, forKey: .sprite)
        shiny = try container.decode(URL.self, forKey: .shiny)
        attack = try container.decode(Int16.self, forKey: .attack)
        defense = try container.decode(Int16.self, forKey: .defense)
        hp = try container.decode(Int16.self, forKey: .hp)
        speed = try container.decode(Int16.self, forKey: .speed)
        specialAttack = try container.decode(Int16.self, forKey: .specialAttack)
        specialDefense = try container.decode(Int16.self, forKey: .specialDefense)
    }
}
