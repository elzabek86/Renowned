//
//  PricesView.swift
//  Renowned
//
//  Created by Jarek  on 31/10/2023.
//

import SwiftUI

struct PricesView: View {
    var body: some View {
        NavigationView {
            ScrollView {
                Text("Prices")
                Text("Prices")
                Text("Prices")
                Text("Prices")
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


struct PriceView_Previews: PreviewProvider {
    static var previews: some View {
        PricesView()
    }
}

#Preview {
    PricesView()
}
