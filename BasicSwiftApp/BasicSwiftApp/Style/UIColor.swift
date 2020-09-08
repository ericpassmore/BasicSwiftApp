//
//  UIColor.swift
//  BasicSwiftApp
//
//  Created by Eric Passmore on 9/7/20.
//  Copyright © 2020 Calder Group Inc. All rights reserved.
//

import UIKit

extension UIColor{
    //Colors are computed class properties. To refrence the class, use self
    // color for frame
    class var primaryFrameBackground:UIColor{
        return self.init(named: "primary") ?? systemBlue
    }
    // darker or lighter version of primaryFrameBackground for gradiants
    class var alternativeFrameBackground:UIColor{
        return self.init(named: "darkPrimary") ?? systemTeal
    }
    // Signifies can take action
    class var accent:UIColor{
        return self.init(named: "accent") ?? systemPurple
    }
    //  Text
    class var primaryForeground:UIColor{
        return self.init(named: "primaryForeground") ?? black
    }
    //  outline for frames, buttons, etc
    class var outline:UIColor{
        return self.init(named: "outline") ?? systemGray
    }
    // red for delete
    class var delete:UIColor{
        return self.init(named: "delete") ?? systemPink
    }
    // white background screen
    class var background:UIColor{
        return self.init(named: "background") ?? white
    }
    // light grey for edit dialogs
    class var editBackground:UIColor {
        return self.init(named: "editBackground") ?? systemFill
    }
}
