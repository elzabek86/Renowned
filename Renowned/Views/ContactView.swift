//
//  ContactView.swift
//  Renowned
//
//  Created by Jarek  on 31/10/2023.
//

import SwiftUI

struct ContactView: View {
    var body: some View {
        NavigationView {
            ScrollView {
                Text("Contact")
                Text("Contact")
                Text("Contact")
                Text("Contact")
            }
            //Navigation bar
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .principal) {
                    LogoView()
                }
            }
            .toolbar {
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


struct ContactView_Previews: PreviewProvider {
    static var previews: some View {
        ContactView()
    }
}

#Preview {
    ContactView()
}
