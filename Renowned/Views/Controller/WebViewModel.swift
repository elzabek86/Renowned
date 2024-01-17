//
//  WebViewModel.swift
//  Renowned
//
//  Created by Jarek  on 17/01/2024.
//

import SwiftUI

// ViewModel for the WebView
class WebViewModel: ObservableObject {
    @Published var url: String
    @Published var isLoading: Bool = true
    
    init(url: String) {
        self.url = url
    }
}
