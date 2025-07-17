//
//  FlucomDexApp.swift
//  FlucomDex
//
//  Created by Tran Luan on 17/7/25.
//

import SwiftUI

@main
struct FlucomDexApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
