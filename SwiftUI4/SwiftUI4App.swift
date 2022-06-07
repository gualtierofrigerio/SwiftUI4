//
//  SwiftUI4App.swift
//  SwiftUI4
//
//  Created by Gualtiero Frigerio on 07/06/22.
//

import SwiftUI

@main
struct SwiftUI4App: App {
    @ObservedObject var coordinator = Coordinator()
    
    var body: some Scene {
        WindowGroup {
            NavigationStack(path: $coordinator.path) {
                MainView()
                    .navigationDestination(for: Destination.self) { destination in
                        ViewFactory.viewForDestination(destination)
                    }
            }
            .environmentObject(coordinator)
        }
    }
}
