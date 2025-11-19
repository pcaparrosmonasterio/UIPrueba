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
    
    let game = Game()
    var body: some View {
        ZStack{
            Color("BackgroundColor").ignoresSafeArea()
            VStack{
                Text("🥖🥖🥖").font(Font.largeTitle)
                Text("\(game.target)").font(Font.largeTitle).kerning(-1).fontWeight(.bold)
                SliderView(sliderValue: $value)
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

struct SliderView: View{
    @Binding var sliderValue:Double
    
    var body: some View{
        
        Slider(
            value: $sliderValue,
                in: 1...100,
                step: 5
            ) {
                Text("Speed")
            } minimumValueLabel: {
                Text("1").fontWeight(.bold)
            } maximumValueLabel: {
                Text("100").fontWeight(.bold)
            }
    }
}

#Preview {
    ContentView()
}
