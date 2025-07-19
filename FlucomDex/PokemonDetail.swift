//
//  PokemonDetail.swift
//  FlucomDex
//
//  Created by Tran Luan on 19/7/25.
//

import SwiftUI

struct PokemonDetail: View {
    @Environment(\.managedObjectContext) private var viewContext
    
    @EnvironmentObject private var pokemon: Pokemon
    
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

#Preview {
    PokemonDetail()
}
