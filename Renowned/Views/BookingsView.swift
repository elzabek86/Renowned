//
//  BookingsView.swift
//  Renowned
//
//  Created by Jarek  on 31/10/2023.
//

import SwiftUI

// Example usage of WebView and LoadingView in a SwiftUI view
struct BookingsView: View {
    @StateObject var viewModel = WebViewModel(url: "https://apps.baxus.com/bookings/renownedsalon")
    
    var body: some View {
        NavigationView {
            LoadingView(isLoading: $viewModel.isLoading, content: {
                WebView(viewModel: viewModel)
            }, loadingText: "Loading...")
            .onAppear {
                // Additional actions when the view appears
            }
            // Navigation bar
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .principal) {
                    LogoView()
                }
                
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button(action: {
                        // Action when the button is tapped
                    }) {
                        Image(systemName: "bell")
                            .font(.system(size: 18))
                            .accentColor(.black)
                    }
                }
            }
        }
    }
}
    
    
    // Preview provider for ContentView
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            BookingsView()
        }
    }

