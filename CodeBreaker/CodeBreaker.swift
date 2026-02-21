//
//  CodeBreaker.swift
//  CodeBreaker
//
//  Created by Joshua Rosado Olivencia on 2/21/26.
//

import SwiftUICore

typealias Peg = Color

struct CodeBreaker {
    var masterCode: Code = Code(kind: .master)
    var guess: Code = Code(kind: .guess)
    var attempts: [Code] = [Code]()
    let pegChoices: [Peg] = [.red, .green, .blue, .yellow]
    
}


struct Code {
    var kind: Kind
    var pegs: [Peg] = [.red, .green, .blue, .yellow]

    
    enum Kind {
        case master
        case guess
        case attempt
        case unknown
        
    }
}

