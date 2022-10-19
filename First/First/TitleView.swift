//
//  TitleView.swift
//  First
//
//  Created by greenthings on 2022/10/18.
//

import SwiftUI

struct TitleView: View {
    var body: some View {
        Label("8조", systemImage: "8.circle")
            .foregroundColor(.pink)
            .font(.largeTitle)
            .bold()
            .padding(10)
            .border(.purple)
        
    }
}

struct TitleView_Previews: PreviewProvider {
    static var previews: some View {
        TitleView()
    }
}
