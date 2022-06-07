//
//  SecondPage.swift
//  SwiftUI4
//
//  Created by Gualtiero Frigerio on 07/06/22.
//

import SwiftUI

struct SecondPage: View {
    var body: some View {
        Text("This is the second page")
        NavigationLink("back to first page", value: Destination.firstPage)
    }
}

struct SecondPage_Previews: PreviewProvider {
    static var previews: some View {
        SecondPage()
    }
}
