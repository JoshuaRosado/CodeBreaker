//
//  ContentView.swift
//  CodeBreaker
//
//  Created by Joshua Rosado Olivencia on 2/15/26.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack{
            pegs(colors:[.red,.green,.green, .yellow])
            pegs(colors:[.red,.blue,.green, .red])
            pegs(colors:[.red,.green,.green, .yellow])
            pegs(colors:[.red,.yellow,.green, .blue])
            
        }
        .padding()
    }
    
    func pegs(colors : Array<Color>) -> some View {
        HStack{
            
            ForEach(colors.indices, id: \.self) { index in
                Circle().foregroundStyle((colors[index]))
            }
            HStack{
                
            }
        }
    }
}
#Preview {
    ContentView()
}
