//
//  ContentView.swift
//  SwiftUI4
//
//  Created by Gualtiero Frigerio on 07/06/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack {
            VStack {
                Text("Navigation stack")
                    .padding()
                NavigationLink("NavigationLink to enter first page", value: Destination.firstPage)
                    .padding()
                NavigationLink("NavigationLink to enter second page", value: Destination.secondPage)
                    .padding()
                List(1..<3) { index in
                    NavigationLink("Nav Link \(index)", value: index)
                }
            }
            .navigationDestination(for: Destination.self) { destination in
                ViewFactory.viewForDestination(destination)
            }
            .navigationDestination(for: Int.self) { index in
                Text("index \(index)")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
