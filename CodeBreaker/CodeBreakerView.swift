//
//  ContentView.swift
//  CodeBreaker
//
//  Created by Joshua Rosado Olivencia on 2/15/26.
//

import SwiftUI

struct CodeBreakerView: View {
    let game = CodeBreaker()
    var body: some View {
        VStack{
            view(for: game.masterCode)
            view(for: game.guess)
//            pegs(colors:game.attempts[0].pegs)
            
            
        }
        .padding()
    }
    
    func view(for code: Code) -> some View {
    
        HStack{
            
            ForEach(code.pegs.indices, id: \.self) { index in
                RoundedRectangle(cornerRadius: 10 )
                    .aspectRatio(1,contentMode: .fit)
                    .foregroundStyle((code.pegs[index]))
                    .onTapGesture{
                        if code.kind = .guess {
                        
                            game.changeGuessPeg(at:index)
                            
                        }
                    }
            }
            MatchMarkers(matches: [.exact, .inexact, .nomatch])
            
        }
    }
}



#Preview {
    CodeBreakerView()
}
