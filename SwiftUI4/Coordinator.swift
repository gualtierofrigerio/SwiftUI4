//
//  Coordinator.swift
//  SwiftUI4
//
//  Created by Gualtiero Frigerio on 07/06/22.
//

import Foundation
import SwiftUI

class Coordinator: ObservableObject {
    @Published var path = NavigationPath()
    
    func gotoHomePage() {
        path.removeLast(path.count)
    }
    
    func tapOnEnter() {
        path.append(Destination.firstPage)
    }
    
    func tapOnFirstPage() {
        path.append(Destination.secondPage)
    }
    
    func tapOnSecondPage() {
        path.removeLast()
    }
}
