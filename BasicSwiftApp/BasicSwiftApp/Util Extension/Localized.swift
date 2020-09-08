//
//  Localized.swift
//  BasicSwiftApp
//
//  Created by Eric Passmore on 9/7/20.
//  Copyright © 2020 Calder Group Inc. All rights reserved.
//

import Foundation

extension String {
    func localized(bundle: Bundle = .main, tableName: String = "Local") -> String {
        return NSLocalizedString(self, tableName: tableName, value: "**\(self)**", comment: "")
    }
}
