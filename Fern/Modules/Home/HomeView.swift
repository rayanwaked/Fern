//
//  HomeView.swift
//  Fern
//
//  Created by Rayan Waked on 5/5/24.
//

import SwiftUI

struct HomeView: View {
    @StateObject private var llamaModel = LlamaModel()
    
    var body: some View {
        Text("\(llamaModel.response)")
            .onAppear {
//                llamaModel.message = "Hi"
//                llamaModel.askLlama()
            }
    }
}

#Preview {
    HomeView()
}
