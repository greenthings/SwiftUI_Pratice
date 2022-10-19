//
//  ContentView.swift
//  First
//
//  Created by greenthings on 2022/10/18.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        VStack{
            
            GeometryReader { geometry in
                HStack(spacing: 0){
                    Text("Hello World with frame1")
                        .font(.largeTitle)
                        .frame(width: geometry.size.width/2, height: geometry.size.height, alignment: .center)
                        .border(Color.black)
                    
                    Text("Hello World with frame2")
                        .font(.largeTitle)
                        .frame(width: geometry.size.width/3, height: geometry.size.height, alignment: .center)
                        .border(Color.black)
                }
                
                
            }
      
            
            Text("Hello World with frame")
                .font(.largeTitle)
                .frame(minWidth: 0, maxWidth: 200, minHeight: 0, maxHeight: 200,alignment: .center)
                .border(Color.black)
                
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewDevice(PreviewDevice(rawValue: "iPhone 14"))    .previewDisplayName("IPhone 14")
    }
}



//Text("매출")
//    .font(.title)
//    .padding()
//
//HStack(alignment: .top){
//    Text("1분기 판매")
//    Spacer()
//
//    VStack(alignment: .trailing, spacing: 15) {
//        Text("1월")
//        Text("2월")
//        Text("3월")
//    }
//
//    Spacer()
//    VStack(alignment: .trailing, spacing: 15) {
//        Text("$1,000,000")
//        Text("$21,000,000")
//        Text("$233,000,000")
//    }
//
//
//}
