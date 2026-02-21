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
            pegs(colors: game.masterCode.pegs)
            pegs(colors: game.guess)
            pegs(colors:game.attempts[0].pegs)
            
            
        }
        .padding()
    }
    
    func pegs(colors : Array<Color>) -> some View {
        HStack{
            
            ForEach(colors.indices, id: \.self) { index in
                RoundedRectangle(cornerRadius: 10 )
                    .aspectRatio(1,contentMode: .fit)
                    .foregroundStyle((colors[index]))
            }
            MatchMarkers(matches: [.exact, .inexact, .nomatch])
            
        }
    }
}



#Preview {
    CodeBreakerView()
}
