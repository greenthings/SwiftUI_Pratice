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
            
            Text("Hello World")
                .font(.largeTitle)
                .border(Color.black)
            
            Text("Hello World with frame")
                .font(.largeTitle)
                .frame(width: 200, height: 200, alignment: .center)
                .border(Color.black)
            
            Text("Hello World with frame")
                .font(.largeTitle)
                .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight:.infinity,alignment: .center)
                .border(Color.black)
                
        }
        .edgesIgnoringSafeArea(.bottom)
            
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
