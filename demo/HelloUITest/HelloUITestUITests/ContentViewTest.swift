//
//  ContentViewTest.swift
//  HelloUITestUITests
//
//  Created by 陈健 on 2020/5/5.
//  Copyright © 2020 test.MOYI. All rights reserved.
//

import XCTest

class ContentViewTest: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.

        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false

        // UI tests must launch the application that they test. Doing this in setup will make sure it happens for each test method.
        XCUIApplication().launch()

        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
    }

    //判断是否存在值为"Hello chenjian"的Text
    func testHello() throws {
        
        let app = XCUIApplication()
        let helloWorldStaticText = app.staticTexts["Hello chenjian"]
        XCTAssertTrue(helloWorldStaticText.exists)
    }
    
    ///点击button弹出alert，点击alert中的ok，alert消失
    func testAlert() throws {
        
        let app = XCUIApplication()
        app.buttons["Hit me!"].tap()
        app.alerts["Hello!"].scrollViews.otherElements.buttons["ok"].tap()
        
        XCTAssertTrue(app.alerts["Hello!"].exists==false)
    }
}
