//
//  StringUtils.swift
//  MegaLearnApp
//
//  Created by Lars Löffler on 21.03.23.
//

import Foundation

class StringUtils {
    
    private static let LOREM_IPSUM = words(
"""
Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet.
"""
)
    
    /**
     Substring or nil if start >= end or out of range
     
     @param string Original string
     @param start Start position of substring
     @param end End position of substring
     @return Substring or nil if start >= end or out of range
     */
    class func substring( _ string: String, _ start: Int, _ end: Int ) -> (any StringProtocol)? {
        
        let count = string.count
        if( start >= end
            || start < 0
            || start >= count
            || end < 0
            || end >= count ) {
            return nil
        }
        
        let startIndex = string.index( string.startIndex, offsetBy: start )
        let endIndex = string.index( string.startIndex, offsetBy: end - 1 )
        return string[ startIndex...endIndex ]
        
    }
    
    
    /**
        Words in a text
     
     @param text Text to transform into array of words
     @return Words in text as an array of string
     */
    class func words( _ text: String ) -> [String] {
        let components = text.components(separatedBy: .whitespacesAndNewlines)
        return components.filter { !$0.isEmpty }
    }
    
    
    /**
    Create a lorem ipsum sample text
     
     @param wordCount Number of words in created text
     */
    class func lorem( words: Int ) -> String {
        var result: [String] = []
        var wordIndex = 0
        while result.count < words {
            result.append( LOREM_IPSUM[ wordIndex ] )
            wordIndex += 1
            if wordIndex == LOREM_IPSUM.count {
                wordIndex = 0
            }
        }
        return result.joined(separator: " " )
    }
    
    /**
     Create multi paragraph lorem ipsum text
     
     - Parameters:
        - paragraphs: Number of paragraphs
        - words: Number of words per paragraph
     
     - Returns: Text with multiple paragraphs of lorem ipsum
     
     */
    class func lorem( paragraphs: Int, words: Int ) -> String {
        var result = ""
        var sep = ""
        for _ in 1...paragraphs {
            result.append( sep )
            result.append( lorem( words: words ) )
            sep = "\n\n"
        }
        return result
    }
    
}


