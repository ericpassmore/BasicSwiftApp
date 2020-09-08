//
//  ApplicationState.swift
//  BasicSwiftApp
//
//  Created by Eric Passmore on 9/7/20.
//  Copyright © 2020 CalderGroup Inc. All rights reserved.
//

import SwiftUI

//
// UTILITY DATA STRUCTURES
//
struct ThreadControl {
    // timeout for synchronous calls in millisecs
    static let wait: Int = 4000
    static let asyncBillQueuedWait: Int = 2000
    static let maxBillConcurrentUpdates: Int = 1
}

// allows navigation, class to enable child ability to change views
class OKNavigation: ObservableObject {
    @Published var control: NavigationControl = NavigationControl()
    
    func reset() {}
}

struct NavigationControl {
    var selection: String  = "main"
}
