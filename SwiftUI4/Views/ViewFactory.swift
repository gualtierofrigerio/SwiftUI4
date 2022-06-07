//
//  ViewFactory.swift
//  SwiftUI4
//
//  Created by Gualtiero Frigerio on 07/06/22.
//

import Foundation
import SwiftUI

class ViewFactory {
    @ViewBuilder
    static func viewForDestination(_ destination: Destination) -> some View {
        switch destination {
        case .firstPage:
            FirstPage()
        case .secondPage:
            SecondPage()
        }
    }
}
