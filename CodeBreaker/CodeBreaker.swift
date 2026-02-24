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
    
    mutating func changeGuessPeg(at index: Int){
        let existingPeg = guess.pegs[index]
        if let indexOfExistingPegInPegChoices = pegChoices.firstIndex(
            of: existingPeg) {
            let newPeg = pegChoices[(indexOfExistingPegInPegChoices + 1) % pegChoices.count]
                guess.pegs[index] = newPeg
        } else {
            guess.pegs[index] = pegChoices.first ?? Code.missing
        }
    }
    
}


struct Code {
    var kind: Kind
    var pegs: [Peg] = [.red, .green, .blue, .yellow]

    static let missing: Peg = .clear
    enum Kind {
        case master
        case guess
        case attempt
        case unknown
        
    }
}

