//
//  macOsAnimationTestAppApp.swift
//  macOsAnimationTestApp
//
//  Created by Denys on 10.05.2023.
//

import SwiftUI

@main
struct macOsAnimationTestAppApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
