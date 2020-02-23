//
//  NavigationBarTests.swift
//  NavigationBarTests
//
//  Created by Joshua Kristanto on 2/7/20.
//  Copyright © 2020 Joshua Kristanto. All rights reserved.
//

import XCTest
@testable import NavigationBar


class NavigationBarTests: XCTestCase {

    override func setUp() {
//        sut = calculate()
        
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }

  
    
   
    
    func testCalculate() {
      // 1. given
//      let guess = 5
//
      // 2. when
//       let a = ThirdViewController.init()
        
      // 3. then
        
        XCTAssertEqual(ThirdViewController.calculate(price: 10), 20, "Score computed from guess is wrong")
    }

}
