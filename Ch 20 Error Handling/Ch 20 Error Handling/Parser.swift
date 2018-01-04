//
//  Parser.swift
//  Ch 20 Error Handling
//
//  Created by Shawon Ashraf on 1/5/18.
//  Copyright © 2018 Shawon Ashraf. All rights reserved.
//

import Foundation


class Parser {
    enum Error: Swift.Error {
        case unExpectedEndOfInput
        case invalidToken(Token)
    }
    
    let tokens: [Token]
    var position = 0
    
    init(tokens: [Token]) {
        self.tokens = tokens
    }
    
    func getNextToken() -> Token? {
        guard position < tokens.count else {
            return nil
        }
        
        let token = tokens[position]
        position += 1
        
        return token
    }
    
    func getNumber() throws -> Int {
        guard let token = getNextToken() else {
            throw Parser.Error.unExpectedEndOfInput
        }
        
        switch token {
        case .number(let value):
            return value
            
        default:
            throw Parser.Error.invalidToken(token)
        }
    }
    
    func parse() throws -> Int {
        var value = try getNumber()
        
        while let token = getNextToken() {
            switch token {
            case .plus:
                let nextNumber = try getNumber()
                value += nextNumber
            case .minus:
                let nextNumber = try getNumber()
                value -= nextNumber
                
            case .number(_):
                throw Parser.Error.invalidToken(token)
            case .multiply:
                let nextNumber = try getNumber()
                value *= nextNumber
            case .divide:
                let nextNumber = try getNumber()
                value /= nextNumber
            }
        }
        
        return value
    }
    
}
