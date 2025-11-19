//
//  ContentView.swift
//  UIPrueba
//
//  Created by Pablo Caparros Monasterio on 19/11/25.
//

import SwiftUI

struct ContentView: View {
    @State var value = 30.0
    @State var alertVisible = false
    var body: some View {
        ZStack{
            Color("BackgroundColor").ignoresSafeArea()
            VStack{
                Text("🥖🥖🥖").font(Font.largeTitle)
                Text("89").font(Font.largeTitle).kerning(-1).fontWeight(.bold)
                Slider(
                    value: $value,
                        in: 1...100,
                        step: 5
                    ) {
                        Text("Speed")
                    } minimumValueLabel: {
                        Text("1").fontWeight(.bold)
                    } maximumValueLabel: {
                        Text("100").fontWeight(.bold)
                    }
                Text("\(value)").padding()
                Button("TRY"){
                    value += 1
                    alertVisible = true
                    print("trying")
                }.font(Font.title3)
                    .padding()
                    .foregroundColor(.white)
                    .background(.accent)
                    .cornerRadius(21)
                    
            }.padding()
        }.alert("hello", isPresented: $alertVisible, actions: {Button("Got it"){print("hola")}}, message: {Text("first alert")})
        
        
    }
}

#Preview {
    ContentView()
}
