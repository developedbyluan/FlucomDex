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
}
