//
//  GalleryDetailsView.swift
//  Renowned
//
//  Created by Jarek  on 20/11/2023.
//

import SwiftUI

struct GalleryDetailsView: View {
    @Environment(\.presentationMode) var presentationMode
    let gallery: Gallery
    
    
    var body: some View {
        NavigationView {
            ScrollView {
                VStack {
                    Spacer()
                    Image(gallery.galleryImageName)
                        .resizable()
                        .scaledToFill()
                        .clipShape(Rectangle())
                        .frame(width: 350, height: 350)
                        .cornerRadius(10)
                }
                
            }
            .navigationBarTitle("Gallery", displayMode: .inline).navigationBarItems(leading: HStack {
                Button(action: {
                    presentationMode.wrappedValue.dismiss()
                }) {
                    Image(systemName: "chevron.left")
                        .font(.system(size: 18))
                        .accentColor(.black)
                }
                
            })
        }
    }
}
                                                    
