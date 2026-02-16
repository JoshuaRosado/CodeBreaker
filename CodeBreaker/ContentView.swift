//
//  ContentView.swift
//  CodeBreaker
//
//  Created by Joshua Rosado Olivencia on 2/15/26.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 1, content: greetings)
    }
    
    @ViewBuilder // List of views, Bag of lego View
    func greetings() -> some View {
        Image(systemName: "globe")
        if false {
            Text("greetings")
        }
        Text("howdy!")
        Circle()
    }
}

#Preview {
    ContentView()
}
