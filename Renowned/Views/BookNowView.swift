//
//  BookNowView.swift
//  Renowned
//
//  Created by Jarek  on 31/10/2023.
//

import SwiftUI

struct BookNowView: View {
    @StateObject var viewModel = WebViewModel(url: "https://apps.baxus.com/bookings/renownedsalon#services/popular")
    @Environment(\.presentationMode) var presentationMode

    var body: some View {
        NavigationView {
            LoadingView(isLoading: $viewModel.isLoading, content: {
                WebView(viewModel: viewModel)
            }, loadingText: "")
            .onAppear {
                // Additional actions when the view appears
            }
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .principal) {
                    LogoView()
                }

                ToolbarItem(placement: .navigationBarTrailing) {
                    Button(action: {
                        // Action when the "bell" button is tapped
                    }) {
                        Image(systemName: "bell")
                            .font(.system(size: 18))
                            .accentColor(.black)
                    }
                }

                ToolbarItem(placement: .navigationBarLeading) {
                    Button(action: {
                        // Action to close the view
                        presentationMode.wrappedValue.dismiss()
                    }) {
                        Image(systemName: "xmark")
                            .font(.system(size: 18))
                            .accentColor(.black)
                    }
                }
            }
        }
    }
}


struct BookNowView_Previews: PreviewProvider {
    static var previews: some View {
        BookNowView()
    }
}

