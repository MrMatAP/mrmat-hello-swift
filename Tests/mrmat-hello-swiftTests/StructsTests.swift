//
//  StructsTests.swift
//  
//
//  Created by Mathieu Imfeld on 01.04.23.
//

import XCTest
@testable import mrmat_hello_swift

final class StructsTests: XCTestCase {
    
    func testBasicStructDefaults() throws {
        let basicStruct = BasicStruct()
        XCTAssertEqual(basicStruct.id, DEFAULT_ID, "The ID is the default ID")
        XCTAssertEqual(basicStruct.name, DEFAULT_NAME, "The name of the basic struct is the default name")
        XCTAssertEqual(basicStruct.surname, DEFAULT_SURNAME, "The surname of the basic struct is the default surname")
    }

}
