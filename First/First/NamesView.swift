//
//  NamesView.swift
//  First
//
//  Created by greenthings on 2022/10/18.
//

import SwiftUI

struct NamesView: View {
    var body: some View {
        VStack {
            MyVStack{
                // Text is View
                // Text("Hello")
                // Label is user interface item
                VStack{
                    Label("혜지", systemImage: "1.circle")
                        .modifier(StandardName())
                    Label("제균", systemImage: "2.circle")
                        .modifier(StandardName())
                    Label("현준", systemImage: "3.circle")
                        .modifier(StandardName())
                    Label("수햔", systemImage: "4.circle")
                        .modifier(StandardName())
                    Label("현기", systemImage: "5.circle")
                        .modifier(StandardName())
                    Label("재혁", systemImage: "6.circle")
                        .modifier(StandardName())
                    Label("수만", systemImage: "7.circle")
                        .modifier(StandardName())
                }

            }
        }
    }
}


struct StandardName: ViewModifier{
    func body(content: Content) -> some View {
        
        content
            .padding(10)
            .foregroundColor(Color.blue)
            .font(.body)
        
    }
}


// View Builder
struct MyVStack<Content: View>: View{
    let content: () -> Content
    init(content: @escaping () -> Content) {
        self.content = content
    }
    
    var body: some View{
        
        VStack(spacing: 10) {
            content()
        }
        .font(.title3)
        .bold()
        .border(.purple)
        
    }
}

struct NamesView_Previews: PreviewProvider {
    static var previews: some View {
        NamesView()
    }
}
