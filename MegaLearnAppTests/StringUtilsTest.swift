//
//  StringUtilsTest.swift
//  MegaLearnAppTests
//
//  Created by Lars Löffler on 21.03.23.
//

import Foundation
import XCTest
@testable import MegaLearnApp

class StringUtilsTest: XCTestCase {
    
    
    func testSubstring() {
        
        XCTAssertEqual( "Hello", String( StringUtils.substring( "Hello World!", 0, 5 )! ) )
        XCTAssertEqual( "W", String( StringUtils.substring( "Hello World!", 6, 7 )! ) )
        
        XCTAssertNil( StringUtils.substring( "Hello World!", 6, 6 ) )
        XCTAssertNil( StringUtils.substring( "Hello World!", 6, 5 ) )
        XCTAssertNil( StringUtils.substring( "Hello World!", -1, 2 ) )
        XCTAssertNil( StringUtils.substring( "Hello World!", 0, 20 ) )
        XCTAssertNil( StringUtils.substring( "Hello World!", 0, -2 ) )
        
    }
    
    func testLorem() {
        
        XCTAssertEqual( "", StringUtils.lorem( words: 0 ) )
        XCTAssertEqual( "Lorem", StringUtils.lorem( words: 1 ) )
        XCTAssertEqual( "Lorem ipsum", StringUtils.lorem( words: 2 ) )
        
        XCTAssertEqual( "Lorem ipsum", StringUtils.lorem( paragraphs: 1, words: 2 ) )
        XCTAssertEqual( "Lorem ipsum\n\nLorem ipsum", StringUtils.lorem( paragraphs: 1, words: 2 ) )

    }
    
    func testCountWords() {
        
        XCTAssertEqual( 0, StringUtils.words( "" ).count )
        XCTAssertEqual( 0, StringUtils.words( " " ).count )
        XCTAssertEqual( 0, StringUtils.words( "\n" ).count )
        XCTAssertEqual( 0, StringUtils.words( "\t" ).count )
        XCTAssertEqual( 0, StringUtils.words( " \n " ).count )

        XCTAssertEqual( 1, StringUtils.words( "abc" ).count )
        XCTAssertEqual( 1, StringUtils.words( "abc " ).count )
        XCTAssertEqual( 1, StringUtils.words( " abc " ).count )
        XCTAssertEqual( 1, StringUtils.words( " ; " ).count )

        XCTAssertEqual( 2, StringUtils.words( "abc def" ).count )
        XCTAssertEqual( 2, StringUtils.words( "abc\ndef" ).count )
        XCTAssertEqual( 2, StringUtils.words( "abc\tdef" ).count )
        XCTAssertEqual( 2, StringUtils.words( "abc     def" ).count )

    }
    
    
}
