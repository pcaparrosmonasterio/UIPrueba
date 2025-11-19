//
//  ContentView.swift
//  UIPrueba
//
//  Created by Pablo Caparros Monasterio on 19/11/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack{
            Text("🥖🥖🥖").font(Font.largeTitle)
            Text("89").font(Font.largeTitle).kerning(-1).fontWeight(.bold)
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
                print("trying")
            }.font(Font.title3)
                .padding()
                .foregroundColor(.white)
                .background(.blue)
                .cornerRadius(21)
                
        }.padding()
        
    }
}

#Preview {
    ContentView()
}
