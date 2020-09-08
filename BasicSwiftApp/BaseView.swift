//
//  BaseView.swift
//  BasicSwiftApp
//
//  Created by Eric Passmore on 9/7/20.
//  Copyright © 2020 Calder Group. All rights reserved.
//
import SwiftUI

struct BaseView: View {
    
    // navigation selection
    @ObservedObject var okNav = OKNavigation()
    
    init() {
        // set background color for Section Header
        UITableViewHeaderFooterView.appearance().tintColor = UIColor.background
        // no seperator
        UITableView.appearance().separatorStyle = .none
        // cell background need this to prevent dark mode leaking through
        UITableViewCell.appearance().backgroundColor = UIColor.background
        UITableView.appearance().backgroundColor = UIColor.background
    }
    
    var body: some View {
        GeometryReader { geo in
            ZStack {
                /***************SET BG COLOR OUTSIDE SAFE AREA**********************/
                    Text("")
                        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity)
                        .background(Color(UIColor.primaryFrameBackground))
                        .edgesIgnoringSafeArea(.all)
                
                VStack() {

                    /***************MAIN CONTENT START**********************/
                    Spacer()
                    self.containedView()
                    Spacer()
                    /***************MAIN CONTENT END**********************/
                    /***************BOTTOM NAV BAR**********************/
                    HStack(alignment: .center, spacing: 0) {
                        Spacer()
                        Button(action: {
                            self.okNav.control.selection = "main"
                            self.okNav.reset()
                        } ) {
                            VStack {
                                Image(systemName: "circle.fill").resizable().frame(width: Dimen.icon_size, height: Dimen.icon_size)
                                Text("main".localized())
                            }
                        }
                        .padding(.leading).modifier(OKBottomNavButton())
                        Spacer()
                        Button(action: {
                            self.okNav.control.selection = "secondary"
                            self.okNav.reset()
                        } ) {
                            VStack {
                                Image(systemName: "triangle.fill").resizable().frame(width: Dimen.icon_size, height: Dimen.icon_size)
                            Text("secondary".localized())
                            }
                        }.padding(.trailing).modifier(OKBottomNavButton())
                        Spacer()
                    }.modifier(OKBottomNav())
                }
                .background(Color(UIColor.background))
                    /***************MODALS**********************/
                    // empty for now
            }
        }
    }
    
    
    func containedView() -> AnyView {
        switch self.okNav.control.selection {
        case "main":
            return AnyView(MainView(okNav: okNav))
        case "secondary":
            return AnyView(SecondaryView(okNav: okNav))
            
        default:
            return AnyView(MainView(okNav: okNav))
        }
    }
}

#if DEBUG
struct BaseView_Previews: PreviewProvider {
    static var previews: some View {
        return BaseView()
    }
}
#endif
