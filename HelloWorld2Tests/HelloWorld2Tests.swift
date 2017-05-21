//
//  HelloWorld2Tests.swift
//  HelloWorld2Tests
//
//  Created by Ben Smith on 17/05/2017.
//  Copyright © 2017 Ben Smith. All rights reserved.
//

import XCTest
@testable import HelloWorld2

class HelloWorld2Tests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testSwitchLightBulbStateReturnsCorrectImage() {
        let lightBulb: LightBulb = LightBulb()
        XCTAssertTrue(#imageLiteral(resourceName: "lightonblack") == lightBulb.switchLightBulbState())

    }
    
    func testSwitchLightBulbStateSwitchesStateFromOffToOn() {
        let lightBulb: LightBulb = LightBulb()
        lightBulb.switchLightBulbState()
        XCTAssertTrue(true == lightBulb.onOrOff)
        
    }
    
    func testSwitchLightBulbStateSwitchesStateFromOnToOff() {
        let lightBulb: LightBulb = LightBulb()
        lightBulb.onOrOff = true
        lightBulb.switchLightBulbState()
        XCTAssertTrue(false == lightBulb.onOrOff)
        
    }
    
}
