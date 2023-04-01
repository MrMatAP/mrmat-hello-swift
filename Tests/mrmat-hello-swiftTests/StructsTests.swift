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
        XCTAssertEqual(basicStruct.id, 0, "The ID is the default ID")
        XCTAssertEqual(basicStruct.name, "John", "The name of the basic struct is the default name")
        XCTAssertEqual(basicStruct.surname, "Doe", "The surname of the basic struct is the default surname")
    }

}
