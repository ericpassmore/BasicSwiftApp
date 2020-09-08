//
//  SecondaryView.swift
//  BasicSwiftApp
//
//  Created by Eric Passmore on 9/7/20.
//  Copyright © 2020 Calder Group Inc. All rights reserved.
//

import SwiftUI

struct SecondaryView: View {
    @ObservedObject var okNav: OKNavigation
    
    var body: some View {
        Text("Hello, World! From Secondary View")
    }
}

struct SecondaryView_Previews: PreviewProvider {
    static var previews: some View {
        SecondaryView(okNav: OKNavigation())
    }
}

