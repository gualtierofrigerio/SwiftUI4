//
//  MainView.swift
//  SwiftUI4
//
//  Created by Gualtiero Frigerio on 07/06/22.
//

import SwiftUI

struct MainView: View {
    @EnvironmentObject var coordinator: Coordinator
    
    var body: some View {
        VStack {
            Text("This is the initial screen")
                .padding()
            NavigationLink("NavigationLink to enter", value: Destination.firstPage)
                .padding()
            Button {
                coordinator.tapOnEnter()
            } label: {
                Text("Button to enter")
            }
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
