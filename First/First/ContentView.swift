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
            // Group도 Container라서 10개이내로 포함이 가능하다.
            Group{
                Text("Vstack Test1")
                Text("Vstack Test2")
                Text("Vstack Test3")
                Text("Vstack Test4")
                Text("Vstack Test5")
                Text("Vstack Test6")
                Text("Vstack Test7")
                Text("Vstack Test8")
                Text("Vstack Test9")
                Text("Vstack Test0")
                //Text("Vstack Test1")
                //Text("Vstack Test2")
            }
            Group{
                Text("Vstack Test1")
                Text("Vstack Test2")
                Text("Vstack Test3")
                Text("Vstack Test4")
                Text("Vstack Test5")
                Text("Vstack Test6")
                Text("Vstack Test7")
                Text("Vstack Test8")
                Text("Vstack Test9")
                Text("Vstack Test0")
                //Text("Vstack Test1")
                //Text("Vstack Test2")
            }
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewDevice(PreviewDevice(rawValue: "iPhone 14 Pro"))    .previewDisplayName("IPhone 14 Pro")
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
