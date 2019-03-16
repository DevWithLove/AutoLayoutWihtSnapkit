//
//  ElementsAccessibilityIdentifier.swift
//  AutoLayoutWihtSnapkit
//
//  Created by Tony Mu on 16/03/19.
//  Copyright © 2019 Tony Mu. All rights reserved.
//

import Foundation

protocol ElementIdentifier {
    var identifier: String {get}
}

extension ElementIdentifier where Self: RawRepresentable, Self.RawValue == String {
    var identifier: String {
        return self.rawValue
    }
}

enum HomeElements: String , ElementIdentifier{
    case updateButton = "Home:Update_Button"
    case lable1 = "Home:Label_1"
    case lable2 = "Home:Lable_2"
    case label3 = "Home:Lable_3"
}
