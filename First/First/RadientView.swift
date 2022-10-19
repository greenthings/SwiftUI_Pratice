//
//  RadientView.swift
//  First
//
//  Created by greenthings on 2022/10/18.
//

import SwiftUI

struct RadientView: View {
    var body: some View {
        VStack {
            ZStack{
                RadialGradient(gradient: Gradient(colors: [Color.red,Color.purple]), center: .top, startRadius: 10, endRadius: 300)
                Image(systemName: "bolt.car")
                    .resizable()
                    .aspectRatio(
                        // fit은  작은 것을 기준으로 맞추기
                        // fill은 큰 것을 맞추기
                        contentMode: .fit
                    )
                    .foregroundColor(.white)
                    .padding()
            }

        }
        .padding(10)
        //.scaledToFit()
    }
}

struct RadientView_Previews: PreviewProvider {
    static var previews: some View {
        RadientView()
    }
}
