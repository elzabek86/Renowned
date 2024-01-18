//
//  WebView.swift
//  Renowned
//
//  Created by Jarek  on 17/01/2024.
//

import SwiftUI
import WebKit

// Custom UIViewRepresentable for a WKWebView
struct WebView: UIViewRepresentable {
    @ObservedObject var viewModel: WebViewModel
    let webView = WKWebView()
    
    // Coordinator to handle WKWebView events
    func makeCoordinator() -> Coordinator {
        Coordinator(self.viewModel)
    }
    
    // Coordinator class to conform to WKNavigationDelegate
    class Coordinator: NSObject, WKNavigationDelegate {
        private var viewModel: WebViewModel
        
        init(_ viewModel: WebViewModel) {
            self.viewModel = viewModel
        }
        
        // Callback when web view finishes loading
        func webView(_ webView: WKWebView, didFinish navigation: WKNavigation!) {
            DispatchQueue.main.async {
                print("Web view finished loading")
                self.viewModel.isLoading = false
            }
        }
    }
    
    // Update the UI when needed
    func updateUIView(_ uiView: UIView, context: UIViewRepresentableContext<WebView>) {
        print("Updating web view UI")
    }
    
    // Create and configure the WKWebView
    func makeUIView(context: Context) -> UIView {
        self.webView.navigationDelegate = context.coordinator
        if let url = URL(string: self.viewModel.url) {
            self.webView.load(URLRequest(url: url))
        }
        return self.webView
    }
}
