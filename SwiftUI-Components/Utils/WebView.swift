//
//  WebView.swift
//  SwiftUI-Components
//
//  Created by Kevin Cuadros on 21/01/25.
//

import Foundation
import SwiftUI
import WebKit

struct WebView: UIViewRepresentable {
    
    var url: String
    let webView: WKWebView
    
    init(url: String) {
        webView = WKWebView(frame: .zero)
        self.url = url
    }

    
    func makeUIView(context: Context) -> WKWebView {
        return webView
    }
    func updateUIView(_ uiView: WKWebView, context: Context) {
        webView.load(URLRequest(url: URL(string: url)!))
    }
}
