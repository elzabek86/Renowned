//
//  BookingsView.swift
//  Renowned
//
//  Created by Jarek  on 31/10/2023.
//

import SwiftUI
import WebKit

struct BookingsView: View {
    private let urlString: String = "https://apps.baxus.com/bookings/renownedsalon"
    
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
            // Navigation bar
                        .navigationBarTitleDisplayMode(.inline)
                        .toolbar {
                            ToolbarItem(placement: .principal) {
                                LogoView()
                            }
                            
                            ToolbarItem(placement: .navigationBarTrailing) {
                                Button(action: {
                                    
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



struct BookingView_Previews: PreviewProvider {
    static var previews: some View {
        BookingsView()
    }
}

#Preview {
    BookingsView()
}
