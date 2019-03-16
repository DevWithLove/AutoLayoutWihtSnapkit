//
//  File.swift
//  AutoLayoutWihtSnapkitTestsUI
//
//  Created by Tony Mu on 16/03/19.
//  Copyright © 2019 Tony Mu. All rights reserved.
//

import Foundation
import EarlGrey

class HomePage {
    var updateButton: GREYInteraction {
        return EarlGrey.selectElement(with: grey_accessibilityID(HomeElements.updateButton.identifier))
    }
}

extension GREYInteraction {
    func tap() {
        self.perform(grey_tap())
    }
}

