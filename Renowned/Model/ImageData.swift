//
//  ImageData.swift
//  Renowned
//
//  Created by Jarek  on 09/11/2023.
//

import Foundation
import SwiftUI

// Structure representing an item in the stylist list
struct Stylist : Identifiable {
    let id = UUID()
    let imageName: String
    let stylistCaption: String
    let stylistLevel: String
    let description: String
    
}

// Struct containing Stylist photo data
struct StylistData {
    static var stylists = [
        Stylist(imageName: "Gavin", stylistCaption: "GAVIN", stylistLevel: "Master Stylist", description: "With Gavin's mastery of multiple styles and techniques, there are few hairstylists in Exeter who can match his passion and expertise. \n\nGavin has worked all over the world with brands such as Wella, A.S.P. Ghd, Toni and Guy and Sassoons. \n\nSIGNATURE LOOK: Classic styles, strong shapes and movement drawing inspiration from androgynous looks with soft onlines."),
        Stylist(imageName: "WorkForUs", stylistCaption: "WORK WITH US!", stylistLevel: "More Info",description: "'A unique space for freelancers to host their clients in a high-end Salon'\n\nWorking in the hair industry can be as flexible as you want it to be with our rental system,\n\nWeather you need an hour, a half day, a full day or full week in our City Centre professional Salon set up.\n\nWHAT'S INCLUDED?\n\nFully air condition salon\n\nWork station (mirror and chair)\n\nUse of a back wash/n/nUse of climazone/n/nUse of Color trolley\n\nFully equipped staff room\n\nAnd more!"),
       
       
        
    ]
}

// Structure representing an item in the gallery list
struct Gallery : Identifiable {
    let id = UUID()
    let galleryImageName: String
    
}
// Struct containing Gallery photo data
struct GalleryData {
    static var photos = [
    Gallery(galleryImageName: "2"),
    Gallery(galleryImageName: "3"),
    Gallery(galleryImageName: "4"),
    Gallery(galleryImageName: "5"),
    Gallery(galleryImageName: "6"),
    Gallery(galleryImageName: "1")
   
    ]
}

// Structure representing an item in the product list
struct Product : Identifiable {
    let id = UUID()
    let productImageName: String
    let productCaption: String
    let productDescription: String
    
}
// Struct containing Procucts photo data
struct ProductsData {
    static var products = [
    Product(productImageName: "p1", productCaption: "Yellow", productDescription: "Renowned Yellow: Extreme hold, extreme definition allowing you to shape and restyle. Great for adding texture and control to all hair types."),
    Product(productImageName: "p2", productCaption: "Blue", productDescription: "Renowned Blue: Pliable strong hold texturising paste. Creates definition and texture control whilst providing a natural finish."),
    Product(productImageName: "p3", productCaption: "Red", productDescription: "Renowned Red: Pliable Dry Clay. Creates an extreme hold with a natural look finish."),
    Product(productImageName: "p4", productCaption: "Salt spray", productDescription: "Renowned Salt Spray: Creates a messy, undone look, adding volume, texture and control. Great for thickening fine hair."),
    Product(productImageName: "p5", productCaption: "Moisturiser", productDescription: "Renowned Moisturiser Helps soften and moisturise coarse bristles whilst soothing the skin at the base of the beard. Encourages strong healthy beard growth.")
    ]
}
