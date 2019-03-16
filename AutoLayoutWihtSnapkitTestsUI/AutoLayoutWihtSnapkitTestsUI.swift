//
//  AutoLayoutWihtSnapkitTestsUI.swift
//  AutoLayoutWihtSnapkitTestsUI
//
//  Created by Tony Mu on 16/03/19.
//  Copyright © 2019 Tony Mu. All rights reserved.
//

import XCTest
import EarlGrey

class AutoLayoutWihtSnapkitTestsUI: XCTestCase {

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testPresenceOfKeyWindow() {
        EarlGrey.selectElement(with: grey_keyWindow())
            .assert(grey_sufficientlyVisible())
    }
 

}
