//
//  MoreView.swift
//  Renowned
//
//  Created by Jarek  on 31/10/2023.
//

import SwiftUI

struct MoreView: View {
    var body: some View {
        NavigationView {
            ScrollView {
                Text("More")
                Text("More")
                Text("More")
                Text("More")
            }
            //Navigation bar
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


struct MoreView_Previews: PreviewProvider {
    static var previews: some View {
        MoreView()
    }
}

#Preview {
    MoreView()
}
