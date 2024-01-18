//
//  HomeView.swift
//  Renowned
//
//  Created by Jarek  on 31/10/2023.
//

import SwiftUI

// Colors definition
let backgroundColorDescription = (Color(red: 241 / 255, green: 241 / 255, blue: 241 / 255))
let bookNowButtonColor = (Color(red: 92 / 255, green: 184 / 255, blue: 92 / 255))
//let stylistLevelColor = (Color(red: 0.807, green: 0.353, blue: 0.404))


struct HomeView: View {
    // State variable to control the visibility of the BookNowView sheet
    @State private var showBookNowView = false
    @State private var selectedStylist: Stylist?
    @State private var selectedPhoto: Gallery?
    @State private var selectedProduct: Product?
    
    var body: some View {
        // Main navigation view
        NavigationView {
            // Scrollable content
            ScrollView {
                // Renowned salon description section
                ZStack(alignment: .topTrailing) {
                    VStack {
                        // Background rectangle with rounded corners
                        Rectangle()
                            .frame(maxWidth: .infinity, maxHeight: .infinity)
                        
                            .foregroundColor(backgroundColorDescription)
                            .cornerRadius(8)
                    }
                    .frame(maxWidth: .infinity)
                    
                    // Horizontal stack containing salon details and photo
                    HStack {
                        // Salon details
                        VStack(alignment: .leading, spacing: 8) {
                            Text("Renowned Salon")
                                .font(.custom("Raleway", size: 20))
                                .foregroundColor(.black)
                                .fontWeight(.semibold)
                                .padding(.bottom, 8)
                            
                            Text("Welcome to Exeter's only Gender-neutral salon, looking after hair for people of all genders at a price that's fair for all.")
                                .font(.custom("Montserrat", size: 14))
                                .foregroundColor(.black)
                            Text("We charge for the time you have with our team, rather than one set price for men or women. Positioned in the heart of Exeter's West Quarter since 2019.")
                            
                                .font(.custom("Montserrat", size: 14))
                                .foregroundColor(.black)
                                .padding(.bottom, 8)
                            
                            // Book appoitment button
                            VStack {
                                Button(action: {
                                    showBookNowView = true
                                }) {
                                    Text("Book Now")
                                        .font(.custom("Montserrat", size: 14))
                                        .fontWeight(.semibold)
                                        .foregroundColor(.white)
                                        .padding()
                                        .background(bookNowButtonColor)
                                        .cornerRadius(8)
                                        .frame(width: 200)
                                }
                                
                            }
                        }
                        .frame(maxWidth: .infinity)
                        
                        
                        // Salon photo
                        VStack{ Image("Renowned")
                                .resizable()
                                .frame(width: 139, height: 200)
                                .aspectRatio(contentMode: .fit)
                                .cornerRadius(10)
                        }
                    }
                    
                    .padding()
                }
                
                // Stylist section title
                HStack {
                    Text("Stylists")
                        .font(.custom("Raleway", size: 20))
                        .foregroundColor(.black)
                        .fontWeight(.semibold)
                        .padding(.horizontal)
                        .frame(maxWidth: .infinity, alignment: .leading)
                    Spacer()
                }

                // ScrollView for stylist info in a similar style to "Book Now" button
                ScrollView(.horizontal) {
                    HStack(spacing: 20) {
                        ForEach(StylistData.stylists) { stylist in
                            Button(action: {
                                selectedStylist = stylist
                            }) {
                                VStack {
                                    Image(stylist.imageName)
                                        .resizable()
                                        .scaledToFit()
                                        .clipShape(Circle())
                                        .frame(width: 100, height: 100)
                                    
                                    Text(stylist.stylistCaption)
                                        .font(.custom("Montserrat", size: 14))
                                        .foregroundColor(.black)
                                        .fontWeight(.medium)
                                    
                                    Text(stylist.stylistLevel)
                                        .font(.custom("Montserrat", size: 14))
                                        .foregroundColor(.gray)
                                        .fontWeight(.medium)
                                }
                            }
                        }
                    }
                    .padding()
                   
                }
                Divider()

                    
                // Gallery section title
                HStack {
                    Text("Gallery")
                        .font(.custom("Raleway", size: 20))
                        .foregroundColor(.black)
                        .fontWeight(.semibold)
                        .padding(.horizontal)
                        .frame(maxWidth: .infinity, alignment: .leading)
                    Spacer()
                }

                // ScrollView for gallery rectangle
                ScrollView(.horizontal) {
                    HStack(spacing: 20) {
                        ForEach(GalleryData.photos) { photo in
                            Button(action: {
                                selectedPhoto = photo
                            }) {
                                VStack {
                                    Image(photo.galleryImageName)
                                        .resizable()
                                        .scaledToFill()
                                        .frame(width: 100, height: 100)
                                        .clipShape(Rectangle())
                                        .cornerRadius(8)
                                }
                            }
                                
                        }
                    }
                    .padding()
                }
                Divider()
                // Products section title
                HStack {
                    Text("Products")
                        .font(.custom("Raleway", size: 20))
                        .foregroundColor(.black)
                        .fontWeight(.semibold)
                        .padding(.horizontal)
                        .frame(maxWidth: .infinity, alignment: .leading)
                    Spacer()
                }

                // ScrollView for products rectangle and names
                ScrollView(.horizontal) {
                    HStack(spacing: 20) {
                        ForEach(ProductsData.products) { product in
                            Button(action: {
                                selectedProduct = product
                            }) {
                                VStack {
                                    Image(product.productImageName)
                                        .resizable()
                                        .scaledToFill()
                                        .frame(width: 100, height: 100)
                                        .clipShape(Rectangle())
                                        .cornerRadius(8)
                                    Text(product.productCaption)
                                        .font(.custom("Montserrat", size: 14))
                                        .foregroundColor(.black)
                                        .fontWeight(.medium)
                                }
                            }
                        }
                    }
                    .padding()
                }
                
               
            }
            
            // Navigation bar settings
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                // Custom logo in the center of the navogation bar
                ToolbarItem(placement: .principal) {
                    LogoView()
                }
            }
            .toolbar {
                // Notification bell button
                Button(action: {
                      // Add action for the bell button
                }) {
                Image(systemName: "bell")
                    .font(.system(size: 18))
                    .accentColor(.black)
                    }
                }
            }
        // Present BookNowView sheet when the "Book Now" button is tapped
        .sheet(isPresented: $showBookNowView) {
            BookNowView()
            }
        .sheet(item: $selectedStylist) { stylist in //
            StylistDetailView(stylist: stylist)
        }
        .sheet(item: $selectedPhoto) { photo in //
            GalleryDetailsView(gallery: photo)
        }
        .sheet(item: $selectedProduct) { product in
            ProductDetailView(product: product)
        }
        
        }
    
    
    }




struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}

#Preview {
    HomeView()
}
