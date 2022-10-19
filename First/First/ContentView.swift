//
//  ContentView.swift
//  First
//
//  Created by greenthings on 2022/10/18.
//

import SwiftUI

struct ContentView: View {
    
    @State private var rotation: Double = 0.0
    @State private var text: String = "Welcome to SwiftUI, Neo"
    
    @State private var pic: Bool = false
    
    
    var colors: [Color] = [.black,.red,.green,.blue]
    
    var colornames: [String] = ["Black","RED", "GREEN","BLUE"]
    
    @State private var colorIndex = 0

    var body: some View {
        VStack{
            Spacer()
            Text("Hello world!")
                .frame(width: 300, height: 200)
                .font(.largeTitle)
                .fontWeight(.heavy)
                .rotationEffect(.degrees(self.rotation))
        
                .foregroundColor(self.colors[self.colorIndex])
                .animation(.easeInOut(duration: 5), value: self.rotation)
            Spacer()
            Divider()
            Slider(value: $rotation, in: 0...360, step: 0.1)
                .padding()
            
            TextField("Enter text here", text: $text)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding()
            
            Form{
                // self.colors[$0]
                Picker(selection: $colorIndex) {
                    ForEach(0..<colornames.count, id: \.self){
                        Text(self.colornames[$0])
                            .foregroundColor(self.colors[self.colorIndex])
                    }
                    
                }label: {
                    Text("Color")  .foregroundColor(self.colors[self.colorIndex])
                }
                VStack(alignment: .center){
                    Image(pic ? "ned" : "neo")
                        .rotationEffect(.degrees(self.rotation))
                        .frame(width: 300)
                        .border(colors[colorIndex])
                }
                
                Button("Neo is Ned?") {
                    pic.toggle()
                }
                
                AsyncImage(url: URL(string: "https://prodimage.images-bn.com/lf?set=key%5Bresolve.pixelRatio%5D,value%5B1%5D&set=key%5Bresolve.width%5D,value%5B300%5D&set=key%5Bresolve.height%5D,value%5B10000%5D&set=key%5Bresolve.imageFit%5D,value%5Bcontainerwidth%5D&set=key%5Bresolve.allowImageUpscaling%5D,value%5B0%5D&set=key%5Bresolve.format%5D,value%5Bwebp%5D&source=url%5Bhttps://prodimage.images-bn.com/pimages/9781501110368_p0_v11_s600x595.jpg%5D&scale=options%5Blimit%5D,size%5B300x10000%5D&sink=format%5Bwebp%5D")) { phase in
                    if let image = phase.image {
                        image.frame(width:300, height: 500)
                        // Displays the loaded image.
                    } else if phase.error != nil {
                        Color.red // Indicates an error.
                    } else {
                        Color.blue // Acts as a placeholder.
                    }
                }
                
            }
            .pickerStyle(.wheel)
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
