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
                Section("List") {
                    NavigationLink {
                        PullToRefresh()
                    } label: {
                        Image(systemName: "arrow.clockwise")
                            .font(.title2)
                            .fontWeight(.bold)
                            .foregroundStyle(.blue)
                        Text("Pull to refresh")
                    }
                    NavigationLink {
                        ContextMenu()
                    } label: {
                        Image(systemName: "square.and.arrow.up.on.square.fill")
                            .font(.title2)
                            .fontWeight(.bold)
                            .foregroundStyle(.blue)
                        Text("Context Menu")
                    }
                }
            }
            .navigationTitle("SwiftUI Components")
        }
        
        
    }
}

#Preview {
    ContentView()
}
