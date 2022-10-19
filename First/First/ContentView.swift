//
//  ContentView.swift
//  First
//
//  Created by greenthings on 2022/10/18.
//

import SwiftUI

struct ContentView: View {
    
    func sayHello(){
        print("안녕하세요")
    }
    var body: some View {
        VStack{
            
            RadientView()
            
            HStack{
               
                RadientView().onAppear {
                    print("Radient가 나타났습니다.")
                }
     
                VStack{
                    TitleView()
                    NamesView()
                }
                
                VStack {
                    
                    Button(action:{
                        sayHello()
                    }, label: {
                        Image(systemName: "bolt")
                    }).onAppear {
                        print("나타났습니다.")
                    }
                    
                    Spacer()
                    
                    Button("Buy Tesla"){
                        sayHello()
                    }
                    
                    Spacer()
                    
                    Button("Buy Tesla Action", action: sayHello)
                    Spacer()
                    RadientView()
                        .scaledToFit()
                }
            }
            
            
            RadientView()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
        .previewDevice(PreviewDevice(rawValue: "iPhone 14 Pro"))    .previewDisplayName("IPhone 14 Pro")
        ContentView()
            .previewDisplayName("iPhone 14 Plus")
            .previewDevice(PreviewDevice(rawValue: "iPhone 14 Plus"))
    }
}
