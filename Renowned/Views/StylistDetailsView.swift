//
//  StylistDetailsView.swift
//  Renowned
//
//  Created by Jarek  on 16/11/2023.
//

import SwiftUI

struct StylistDetailView: View {
    @Environment(\.presentationMode) var presentationMode
    let stylist: Stylist
    let phoneNumber = 07862235100
    
    var body: some View {
        NavigationView {
            ScrollView {
                VStack {
                    Image(stylist.imageName)
                        .resizable()
                        .scaledToFill()
                        .clipShape(Rectangle())
                        .frame(width: 200, height: 200)
                        .cornerRadius(10)
                    
                    Text(stylist.stylistCaption)
                        .font(.custom("Raleway", size: 20))
                        .fontWeight(.semibold)
                    
                    Text(stylist.stylistLevel)
                        .font(.custom("Montserrat", size: 14))
                        .fontWeight(.medium)
                        .foregroundColor(.gray)
                        .padding(.bottom, 8)
                    
                
                    
                    Text(stylist.description)
                        .font(.custom("Montserrat", size: 14))
                        .foregroundColor(.black)
                    
                }
                .padding()
                                .navigationBarTitle(stylist.stylistCaption, displayMode: .inline)
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
