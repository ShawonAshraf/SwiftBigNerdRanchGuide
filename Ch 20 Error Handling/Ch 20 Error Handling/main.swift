//
//  main.swift
//  Ch 20 Error Handling
//
//  Created by Shawon Ashraf on 1/5/18.
//  Copyright © 2018 Shawon Ashraf. All rights reserved.
//

import Foundation

// text lexer

func evaluate(_ input: String) {
    print("Evaluating: \(input)")
    let lexer = Lexer(input: input)
    
    // error handling
    do {
        let tokens = try lexer.lex()
        print("Lexer output: ")
        for token in tokens {
            print(token)
        }
        let parser = Parser(tokens: tokens)
        let parsingResult = try parser.parse()
        print("Parser output: \(parsingResult)")
    } catch {
        print("An error ocurred: \(error)")
    }
}

var inputs = ["10 + 3 + 5", "1 + 2 + abcdefgh", "1 + 3 + 5 * 6 - 8", " "]
for input in inputs {
    evaluate(input)
    print("\n")
}

