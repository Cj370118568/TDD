//
//  Converter.swift
//  NumeroTests
//
//  Created by 陈健 on 2020/4/25.
//  Copyright © 2020 Facebook. All rights reserved.
//

import XCTest
@testable import Numero

class Converter: XCTestCase {
    let converter = Converter()
    
    func testConversionForOne() {
        let result = converter.convert(1)
        XCTAssertEqual(result, "I", "Conversion for 1 is incorrect")
    }
    
}
