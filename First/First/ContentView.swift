//
//  ContentView.swift
//  First
//
//  Created by greenthings on 2022/10/18.
//

import SwiftUI

struct ContentView: View {
    
    @State private var wifiEnabled1 = true
    @State private var userName = ""
    
    var body: some View {
        VStack(alignment: .center){
       
  
            
            TextField("Input user name", text: $userName)
            
            Label(userName, systemImage: "6.circle")

            Text(userName)
            
            Toggle(isOn: $wifiEnabled1) {
                Text("Enabled Wifi")
            }
            
            
            WifiResultView(wifiEnabled: $wifiEnabled1)
        }
        .font(.largeTitle)
    }
}

struct WifiResultView: View{
    // 외부에서 정해주는 거라 초기값이 있으면 안됨.
    @Binding var wifiEnabled: Bool
    
    var body: some View{
        Image(systemName: wifiEnabled ? "wifi" : "wifi.slash")
            .resizable()
            .border(.black)
            .frame(width: 100,height: 90)
        Text(wifiEnabled ? "Wi-Fi turn on" : "Wi-Fi turn off")
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
