//
//  BookNowView.swift
//  Renowned
//
//  Created by Jarek  on 06/11/2023.
//

import SwiftUI
import WebKit

struct BookNowView: View {
    @Environment(\.presentationMode) var presentationMode
    private let urlString: String = "https://apps.baxus.com/bookings/renownedsalon#services/popular"
    
    var body: some View {
        NavigationView {
                VStack {
                    WebView(url: URL(string: urlString)!)
                        .overlay(
                            
                            // Loading indicator
                            ProgressView()
                                .progressViewStyle(CircularProgressViewStyle(tint: .black))
                                .scaleEffect(1.0, anchor: .center)
                    )
                    .padding()
                Spacer()
                }
               
            
            // Navigation bar settings
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                // Custom logo in the center of the navigation bar
                ToolbarItem(placement: .principal) {
                    LogoView()
                }
                
                // Back button to dismiss the view and return to HomeView
                ToolbarItem(placement: .navigationBarLeading) {
                    Button(action: {
                        presentationMode.wrappedValue.dismiss()
                    }) {
                        Image(systemName: "chevron.left")
                            .font(.system(size: 18))
                            .accentColor(.black)
                    }
                }
                
                // Notification bell button
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button(action: {
                          // Add action for the bell button
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

struct WebView: UIViewRepresentable {
    var url: URL
    
    func makeUIView(context: Context) -> WKWebView {
        return WKWebView()
    }
    
    func updateUIView(_ uiView: WKWebView, context: Context) {
        let request = URLRequest(url: url)
        uiView.load(request)
    }
}


struct BookNow_Previews: PreviewProvider {
    static var previews: some View {
        BookNowView()
    }
}

#Preview {
    BookNowView()
}
