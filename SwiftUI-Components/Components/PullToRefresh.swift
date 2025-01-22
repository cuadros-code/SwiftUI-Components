//
//  PullToRefresh.swift
//  SwiftUI-Components
//
//  Created by Kevin Cuadros on 21/01/25.
//

import SwiftUI
import WebKit

extension Color {
    static func random() -> Color {
        Color(
            red: .random(in: 0...1),
            green: .random(in: 0...1),
            blue: .random(in: 0...1)
        )
    }
}

struct RowStyle {
    var color: Color
}

struct PullToRefresh: View {
    
    @State private var listColors: [RowStyle] = [
        RowStyle(color: .red),
        RowStyle(color: .blue)
    ]
    @State private var showCode = false
    
    var body: some View {
        NavigationStack {
            List {
                ForEach(listColors, id: \.color) { item in
                    HStack {}
                        .listRowBackground(item.color)
                }
            }
            
            .sheet(isPresented: $showCode) {
                WebView(url: "https://github.com/cuadros-code/SwiftUI-Components/blob/main/SwiftUI-Components/Components/PullToRefresh.swift")
            }
            .navigationTitle("Pull to Refresh")
            .toolbar {
                Button("Code") {
                    showCode.toggle()
                }
            }
            .refreshable {
                await refreshAction()
            }
        }
    }
    
    func refreshAction() async {
        do {
            try await Task.sleep(nanoseconds: 1_000_000_000 * 2)
            let color = RowStyle(color: .random())
            listColors.append(color)
        } catch {
            print("Refresh error")
        }
    }
}

#Preview {
    PullToRefresh()
}



