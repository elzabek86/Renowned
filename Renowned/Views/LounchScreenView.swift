//
//  LounchScreenView.swift
//  Renowned
//
//  Created by Jarek  on 05/11/2023.
//

import SwiftUI

struct LounchScreenView: View {
    @State private var isActive = false
    @State private var size = 0.8
    @State private var opacity = 0.5
    var body: some View {
        if isActive {
            ContentView()
        } else {
            VStack {
                VStack {
                    Image("299383342_487507713379495_4503924598882961379_n")
                        .resizable()
                        .frame(width: 300, height: 300)
                        .scaleEffect(size)
                        .opacity(opacity)
                        .onAppear {
                            withAnimation(.easeInOut(duration: 1.2)) {
                                self.size = 0.9
                                self.opacity = 1.0
                            }
                        }
                }
                .onAppear {
                    DispatchQueue.main.asyncAfter(deadline: .now() + 2.0) {
                        withAnimation {
                            self.isActive = true
                        }
                        
                    }
                }
                
            }
            
        }
        
    }
}

#Preview {
    LounchScreenView()
}
