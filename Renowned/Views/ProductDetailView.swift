//
//  ProductDetailView.swift
//  Renowned
//
//  Created by Jarek  on 27/11/2023.
//

import SwiftUI

struct ProductDetailView: View {
    @Environment(\.presentationMode) var presentationMode
    let product: Product
    let phoneNumber = 07862235100
    
    var body: some View {
        NavigationView {
            ScrollView {
                VStack {
                    Image(product.productImageName)
                        .resizable()
                        .scaledToFill()
                        .clipShape(Rectangle())
                        .frame(width: 200, height: 200)
                        .cornerRadius(10)
                    
                    Text(product.productCaption)
                        .font(.custom("Raleway", size: 20))
                        .fontWeight(.semibold)
                        .padding(.bottom, 8)
            
                    
                    Text(product.productDescription)
                        .font(.custom("Montserrat", size: 14))
                        .foregroundColor(.black)
                    
                }
                .padding()
                                .navigationBarTitle(product.productCaption, displayMode: .inline)
                                .navigationBarItems(leading: HStack {
                                    Button(action: {
                                        presentationMode.wrappedValue.dismiss()
                                    }) {
                                        Image(systemName: "chevron.left")
                                            .font(.system(size: 18))
                                            .accentColor(.black)
                                    }
                                    Spacer()
                                }, trailing: HStack {
                                    Button(action: {
                                        if let phoneURL = URL(string: "tel://\(phoneNumber)"), UIApplication.shared.canOpenURL(phoneURL) {
                                            UIApplication.shared.open(phoneURL)
                                        }
                                    }) {
                                        Image(systemName: "phone")
                                            .font(.system(size: 18))
                                            .accentColor(.black)
                                    }
                                })
                            }
                        }
                    }
                }
