//
//  LogoViewController.swift
//  Renowned
//
//  Created by Jarek  on 01/11/2023.
//

import Foundation
import SwiftUI

//Logo in NavigationTitle
struct LogoView: View {
    var body: some View {
        Image("Logo")
            .resizable()
            .frame(width: 60, height: 60
            )
            .aspectRatio(contentMode: .fit)
    }
}
