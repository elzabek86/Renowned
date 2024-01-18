//
//  ActivityIndicatorView.swift
//  Renowned
//
//  Created by Jarek  on 17/01/2024.
//

import SwiftUI

// Custom UIViewRepresentable for an activity indicator
struct ActivityIndicatorView: UIViewRepresentable {
    @Binding var isAnimating: Bool
    let style: UIActivityIndicatorView.Style
    
    // Create the underlying UIActivityIndicatorView
    func makeUIView(context: UIViewRepresentableContext<ActivityIndicatorView>) -> UIActivityIndicatorView {
        return UIActivityIndicatorView(style: style)
    }
    
    // Update the UIActivityIndicatorView based on the isAnimating state
    func updateUIView(_ uiView: UIActivityIndicatorView, context: UIViewRepresentableContext<ActivityIndicatorView>) {
        isAnimating ? uiView.startAnimating() : uiView.stopAnimating()
    }
}
