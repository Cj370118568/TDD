//
//  ConverterTests.swift
//  NumeroTests
//
//  Created by 陈健 on 2020/5/5.
//  Copyright © 2020 Facebook. All rights reserved.
//

import XCTest
@testable import Numero

class ConverterTests: XCTestCase {

    let converter = Converter()
    
    func testConversionForOne() {
        let result = converter.convert(1)
        XCTAssertEqual(result, "I", "Conversion for 1 is incorrect")
    }
    
    func testConversionForTwo() {
      let result = converter.convert(2)
      XCTAssertEqual(result, "II", "Conversion for 2 is incorrect")
    }
    
    func testConversionForFive() {
      let result = converter.convert(5)
      XCTAssertEqual(result, "V", "Conversion for 5 is incorrect")
    }

    func testConversionForSix() {
      let result = converter.convert(6)
      XCTAssertEqual(result, "VI", "Conversion for 6 is incorrect")
    }

    func testConversionForTen() {
      let result = converter.convert(10)
      XCTAssertEqual(result, "X", "Conversion for 10 is incorrect")
    }

}
