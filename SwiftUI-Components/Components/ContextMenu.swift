//
//  ContextMenu.swift
//  SwiftUI-Components
//
//  Created by Kevin Cuadros on 23/01/25.
//

import SwiftUI

struct ContextMenu: View {
    var body: some View {
        NavigationStack {
            List {
                Section {
                    Text("Context Menu")
                        .contextMenu {
                            Button {
                                
                            } label: {
                                Label("Add to Favorites", systemImage: "heart")
                            }
                        }
                }
                
                Section {
                    Text("Badge")
                        .badge(10)
                }
               
            }
            .navigationTitle("List ")
        }
    }
}

#Preview {
    ContextMenu()
}
