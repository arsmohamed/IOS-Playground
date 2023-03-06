//
//  MainView.swift
//  Little Lemon
//
//  Created by Amr Mohamed on 2023-03-01.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        ZStack {
            Color.blue.opacity(0.25).ignoresSafeArea()
            HStack(spacing: 8) {
                Text("Demo")
                    .scaledToFit().frame(width: 100, height: 100, alignment: .center)
                VStack {
                    Text("Tomato Tortellini, Bottarga and Carbonara")
                        .font(.title3)
                        .multilineTextAlignment(.center)
                }
            }
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
