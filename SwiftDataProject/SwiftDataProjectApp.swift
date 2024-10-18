//
//  SwiftDataProjectApp.swift
//  SwiftDataProject
//
//  Created by Juan Carlos Robledo Morales on 18/10/24.
//

import SwiftUI
import SwiftData

@main
struct SwiftDataProjectApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
        .modelContainer(for: User.self)
    }
}
