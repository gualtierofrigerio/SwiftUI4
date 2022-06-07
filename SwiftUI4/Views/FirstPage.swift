//
//  FirstPage.swift
//  SwiftUI4
//
//  Created by Gualtiero Frigerio on 07/06/22.
//

import SwiftUI

struct FirstPage: View {
    var body: some View {
        Text("This is the first page!")
        NavigationLink("goto to second", value: Destination.secondPage)
    }
}

struct FirstPage_Previews: PreviewProvider {
    static var previews: some View {
        FirstPage()
    }
}
