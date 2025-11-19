//
//  ContentView.swift
//  UIPrueba
//
//  Created by Pablo Caparros Monasterio on 19/11/25.
//

import SwiftUI

struct ContentView: View {
    @State var value = 30
    var body: some View {
        ZStack{
            Color("BackgroundColor").ignoresSafeArea()
            VStack{
                Text("🥖🥖🥖").font(Font.largeTitle)
                Text("\(value)").font(Font.largeTitle).kerning(-1).fontWeight(.bold)
                Slider(
                    value: .constant(50),
                        in: 1...100,
                        step: 5
                    ) {
                        Text("Speed")
                    } minimumValueLabel: {
                        Text("1").fontWeight(.bold)
                    } maximumValueLabel: {
                        Text("100").fontWeight(.bold)
                    }
                Button("TRY"){
                    value += 1
                    print("trying")
                }.font(Font.title3)
                    .padding()
                    .foregroundColor(.white)
                    .background(.accent)
                    .cornerRadius(21)
                    
            }.padding()
        }
        
        
    }
}

#Preview {
    ContentView()
}
