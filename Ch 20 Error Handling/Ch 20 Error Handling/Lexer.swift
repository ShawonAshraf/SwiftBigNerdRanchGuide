//
//  Lexer.swift
//  Ch 20 Error Handling
//
//  Created by Shawon Ashraf on 1/5/18.
//  Copyright © 2018 Shawon Ashraf. All rights reserved.
//

import Foundation


enum Token {
    case number(Int)
    case plus
    case minus
    case multiply
    case divide
}

class Lexer {
    enum Error: Swift.Error {
        case invalidCharacter(Character)
    }
    
    let input: String.CharacterView
    var position: String.CharacterView.Index
    
    init(input: String) {
        self.input = input.characters
        self.position = self.input.startIndex
    }
    
    func peek() -> Character? {
        guard position < input.endIndex else {
            return nil
        }
        
        return input[position]
    }
    
    func advance() {
        assert(position < input.endIndex, "Can't advance past endIndex")
        position = input.index(after: position)
    }
    
    func getNumber() -> Int {
        var value = 0
        
        while let nextCharacter = peek() {
            switch nextCharacter {
            case "0"..."9":
                let digitValue = Int(String(nextCharacter))!
                value = 10 * value + digitValue
                advance()
            default:
                return value
            }
        }
        
        return value
    }
    
    func lex() throws -> [Token] {
        var tokens = [Token]()
        
        while let nextCharacter = peek() {
            switch nextCharacter {
            case "0"..."9":
                let value = getNumber()
                tokens.append(.number(value))
            case "+":
                tokens.append(.plus)
                advance()
            case "-":
                tokens.append(.minus)
                advance()
            case "*":
                tokens.append(.multiply)
                advance()
            case "/":
                tokens.append(.divide)
                advance()
            case " ":
                advance()
            default:
                // we have an error
                for token in tokens {
                    print(token)
                }
                throw Lexer.Error.invalidCharacter(nextCharacter)
            }
        }
        
        return tokens
    }
}
