//
//  Modifier.swift
//  BasicSwiftApp
//
//  Created by Eric Passmore on 9/7/20.
//  Copyright © 2020 Calder Group Inc. All rights reserved.
//

import SwiftUI

struct OKBottomNav: ViewModifier {
    func body(content: Content) -> some View {
        content
            .background(Color(UIColor.primaryFrameBackground))
            .foregroundColor(Color(UIColor.primaryForeground))
            .font(.system(size: Dimen.navBar_fontSize, weight: .regular))
    }
}

struct OKBottomNavButton: ViewModifier {
    func body(content: Content) -> some View {
        content
            .padding(.top, Dimen.navBar_padding_bottom)
            .padding(.bottom, Dimen.navBar_padding_top)
    }
}
