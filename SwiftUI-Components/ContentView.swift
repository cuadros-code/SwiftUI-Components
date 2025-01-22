//
//  ContentView.swift
//  SwiftUI-Components
//
//  Created by Kevin Cuadros on 21/01/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack {
            List {
                NavigationLink("Pull to refresh") {
                    PullToRefresh()
                }
            }
            .navigationTitle("SwiftUI Components")
        }
        
    }
}

#Preview {
    ContentView()
}
