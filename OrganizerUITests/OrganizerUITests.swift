//
//  OrganizerUITests.swift
//  OrganizerUITests
//
//  Created by Josh Santos on 3/4/2564 BE.
//

import XCTest

class OrganizerUITests: XCTestCase {
    var app: XCUIApplication!
    
    override func setUpWithError() throws {
        super.setUp()
        app = XCUIApplication()
        app.launch()
        
        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testHasExpectedNumberOfTabs() throws {
        XCTAssertEqual(app.tabBars.buttons.count, 2)
    }
    
    func testTabPosition() throws {
        let calendar = app.tabBars.buttons["Calendar"]
        XCTAssertTrue(calendar.exists)
        XCTAssertEqual(calendar.identifier, app.tabBars.buttons.element(boundBy: 1).identifier)
        let messages = app.tabBars.buttons["Messages"]
        XCTAssertTrue(messages.exists)
        XCTAssertEqual(messages.identifier, app.tabBars.buttons.element(boundBy: 0).identifier)
    }

    /*func testLaunchPerformance() throws {
        if #available(macOS 10.15, iOS 13.0, tvOS 13.0, *) {
            // This measures how long it takes to launch your application.
            measure(metrics: [XCTApplicationLaunchMetric()]) {
                XCUIApplication().launch()
            }
        }
    }*/
}
