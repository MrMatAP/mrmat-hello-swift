//
//  BasicsTest.swift
//  
//
//  Created by Mathieu Imfeld on 01.04.23.
//

import XCTest
@testable import mrmat_hello_swift

final class BasicsTest: XCTestCase {
    
    func testConstants() throws {
        //
        // Attempting to assign to a constant ('let') yields a compile-time error
        // DEFAULT_ID = 10
        
        XCTAssertTrue(true, "All tests here are handled differently")
    }
    
    func testTypeInference() throws {
        var foo = "I am a string"
        XCTAssertTrue(type(of: foo) == String.self, "A variable containing a string is inferred to a String")
        XCTAssertFalse(type(of: foo) == Int.self, "A variable containing a string is not an Int")
        
        //
        // Attempting to assign an Int to what was previously inferred to be a String will fail at compile-time
        //foo = 27
    }
    
    func testTuples() throws {
        //
        // Tuples can be decomposed

        let tuple = (404, "Not Found")
        let (status, message) = tuple
        
        XCTAssertEqual(status, 404, "We can decompose the status from the tuple")
        XCTAssertEqual(message, "Not Found", "We can decompose the message from the tuple")
        
        //
        // Tuples may have any number of elements and avoid some of those we're not interested in
        
        let tupleWithGrilling = (404, "Not Found", "You had one job!")
        let (_, _, grilling) = tupleWithGrilling
        XCTAssertEqual(grilling, "You had one job!", "We can decompose the grilling from the tuple")
        
        //
        // Tuple elements are accessible using index numbers
        
        XCTAssertEqual(tupleWithGrilling.1, "Not Found", "We can access a tuple element with an index")
        
        //
        // We can name the elements of tuples
        
        let namedTuple = (status: 404, message: "Not Found", grilling: "You had one job!")
        XCTAssertEqual(namedTuple.status, 404, "We can access a tuple element by its name")
    }

    func testOptionals() throws {
        //
        // Conversion may not always be possible
        
        let possibleNumber = "27"
        let convertedNumber = Int(possibleNumber)
        
        XCTAssertTrue(type(of: possibleNumber) == String.self, "The possible number is a String")
        XCTAssertTrue(type(of: convertedNumber) == Optional<Int>.self, "The converted number may (!) be an Int")
        
        //
        // How to check an Optional
        
        XCTAssertTrue(convertedNumber != nil, "An optional with a value won't be nil")
        let badNumber = Int("foo")
        XCTAssertTrue(badNumber == nil, "An optional without a value will be nil")
        
        //
        // Forced Unwrapping can be performed by suffixing with a !, but it is dangerous
        
        XCTAssertEqual(convertedNumber!, 27, "The optional contains the number 27")
        
        //
        // Optional Binding
        
        if let actualNumber = convertedNumber {
            XCTAssertEqual(actualNumber, 27, "An optional can be unwrapped (bound) into a temporary variable")
        } else {
            XCTAssertTrue(false, "The optional did not contain any value")
        }
    }
    
}
