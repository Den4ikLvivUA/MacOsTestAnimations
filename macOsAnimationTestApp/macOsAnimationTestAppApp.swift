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
    @State private var window: NSWindow!

    var body: some Scene {
        WindowGroup {
            CustomView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
                .background {
                    if window == nil {
                        Color.clear.onReceive(NotificationCenter.default.publisher(for:
                            NSWindow.didBecomeKeyNotification)) { notification in
                            if let window = notification.object as? NSWindow {
//                                window.standardWindowButton(.closeButton)?.isHidden = true
//                                window.standardWindowButton(.miniaturizeButton)?.isHidden = true
//                                window.standardWindowButton(.zoomButton)?.isHidden = true
                                window.titlebarAppearsTransparent = true
                                window.standardWindowButton(.closeButton)?.superview?.isHidden = true
                            }
                        }
                    }
                }
        }
        .windowResizability(.contentSize)
    }
}
