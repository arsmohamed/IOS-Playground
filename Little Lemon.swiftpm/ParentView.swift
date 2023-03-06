//
//  ParentView.swift
//  Little Lemon
//
//  Created by Amr Mohamed on 2023-03-02.
//

import SwiftUI

struct ParentView: View {
    var body: some View {
        HStack {
            Rectangle()
                .fill(Color.blue) //mehthod one to change color
                .opacity(0.25)
                .frame(width: 50, height: 50)
            Text("Rectangle One ")
                .foregroundColor(.white)
                .padding(20)
                .background(.yellow)
            Rectangle()
                .foregroundColor(.blue)
                .frame(width: 100, height: 30)
        }
    }
}

struct ParentView_Previews: PreviewProvider {
    static var previews: some View {
        ParentView()
    }
}
