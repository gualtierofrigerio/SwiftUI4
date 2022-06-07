//
//  SecondPage.swift
//  SwiftUI4
//
//  Created by Gualtiero Frigerio on 07/06/22.
//

import SwiftUI

struct SecondPage: View {
    @EnvironmentObject var coordinator: Coordinator
    
    var body: some View {
        Text("This is the second page")
        NavigationLink("Go to first page", value: Destination.firstPage)
            .padding()
        Button {
            coordinator.tapOnSecondPage()
        } label: {
            Text("Pop to first page")
        }
        .padding()
        Button {
            coordinator.gotoHomePage()
        } label: {
            Text("Back to home page")
        }
    }
}

struct SecondPage_Previews: PreviewProvider {
    static var previews: some View {
        SecondPage()
    }
}
