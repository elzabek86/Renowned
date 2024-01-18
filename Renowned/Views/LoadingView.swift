//
//  LoadingView.swift
//  Renowned
//
//  Created by Jarek  on 17/01/2024.
//

import SwiftUI

// Custom loading view that overlays content with an activity indicator and loading text
struct LoadingView<Content: View>: View {
    @Binding var isLoading: Bool
    var content: () -> Content
    var loadingText: String
    
    var body: some View {
        GeometryReader { geometry in
            ZStack(alignment: .center) {
                // Main content with optional blur when loading
                self.content()
                    .disabled(self.isLoading)
                    .blur(radius: self.isLoading ? 3 : 0)
                
                // Loading indicator and text
                VStack {
//                    Text(loadingText)
                    ActivityIndicatorView(isAnimating: $isLoading, style: .medium)
                }
//                .frame(width: geometry.size.width / 2, height: geometry.size.height / 5)
//                .background(Color.secondary.colorInvert())
//                .foregroundColor(Color.black)
//                .cornerRadius(20)
//                .opacity(self.isLoading ? 1 : 0)
                .id(isLoading)  // Add this line to force recreation of the LoadingView when isLoading changes
            }
        }
    }
}
