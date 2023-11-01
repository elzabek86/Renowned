//
//  ContentView.swift
//  Renowned
//
//  Created by Jarek  on 31/10/2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
           HomeView()
                .tabItem {
                    Image(systemName: "house.fill")
                    Text("Home")
                }
            BookingsView()
                .tabItem {
                    Image(systemName: "calendar.badge.plus")
                    Text("Bookings")
                }
            PricesView()
                .tabItem {
                    Image(systemName: "list.clipboard")
                    Text("Prices")
                }
            ContactView()
                .tabItem {
                    Image(systemName: "envelope")
                    Text("Contact")
                }
            MoreView()
                .tabItem {
                    Image(systemName: "ellipsis")
                    Text("More")
                }
        }
        .accentColor(Color(red: 0.807, green: 0.353, blue: 0.404))
    
    }
}

#Preview {
    ContentView()
}
