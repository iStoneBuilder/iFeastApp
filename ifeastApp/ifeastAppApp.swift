//
//  ifeastAppApp.swift
//  ifeastApp
//
//  Created by Ji Chen on 2022/12/18.
//

import SwiftUI

@main
struct ifeastAppApp: App {
    
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
