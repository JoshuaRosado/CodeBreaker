//
//  MatchMarkers.swift
//  CodeBreaker
//
//  Created by Joshua Rosado Olivencia on 2/18/26.
//

import SwiftUI

enum Match {
    case nomatch
    case exact
    case inexact
    
}
struct MatchMarkers: View {
    var matches: [Match]
    var body: some View {
        HStack{
            VStack{
                matchMarker(peg: 0)
                matchMarker(peg: 1)
            }
            VStack{
                matchMarker(peg: 2)
                matchMarker(peg: 3)
            }
        }
    }
    func matchMarker(peg: Int) -> some View {
        // How many times the first($0) INT matches
        let exactCount = matches.count { $0 == .exact}
        // How many times the first($0) INT does not match
        let foundCount = matches.count{ $0 != .nomatch}
        return Circle()
            .fill(exactCount > peg ? Color.primary : Color.clear)
            .strokeBorder(
                foundCount > peg ? Color.primary : Color.clear,
                lineWidth: 2
            )
            .aspectRatio(1,contentMode: .fit)
    }
    
    
}



#Preview {
    MatchMarkers(matches: [.exact, .inexact, .nomatch])
}
