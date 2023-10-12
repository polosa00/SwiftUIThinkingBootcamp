//
//  SliderBootcamp.swift
//  SwiftUIThinkingBootcamp
//
//  Created by Александр Полочанин on 12.10.23.
//

import SwiftUI

struct SliderBootcamp: View {
    
    @State var sliderValue = 10.0
    @State var colorText: Color = .green
    
    var body: some View {
        
        VStack {
            HStack {
                Text("Rating")
                Text(String(format: "%.2f", sliderValue))
                    .foregroundColor(colorText)
            }
            Slider(
                value: $sliderValue,
                in: 1...20, step: 0.25) {
                    Text("Title")
                } minimumValueLabel: {
                    Text("1")
                } maximumValueLabel: {
                    Text("20")
                    
                } onEditingChanged: { _ in
                    if sliderValue <= 5 {
                        colorText = .red
                    } else if sliderValue >= 15 {
                        colorText = .blue
                    } else {
                        colorText = .green
                    }
                }
    
        }
        .padding()
    }
}

struct SliderBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        SliderBootcamp()
    }
}
