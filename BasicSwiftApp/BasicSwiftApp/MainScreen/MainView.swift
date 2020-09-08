//
//  MainView.swift
//  BasicSwiftApp
//
//  Created by Eric Passmore on 9/7/20.
//  Copyright © 2020 Calder Group Inc. All rights reserved.
//

import SwiftUI

struct MainView: View {
    @ObservedObject var okNav: OKNavigation
    
    var body: some View {
        Text("Hello from Main View")
    }
}

struct MainView_Previews : PreviewProvider {
    static var previews: some View {
        return MainView(okNav: OKNavigation())
    }
}
