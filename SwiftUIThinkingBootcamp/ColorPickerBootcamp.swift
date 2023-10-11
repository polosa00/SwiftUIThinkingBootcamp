//
//  ColorPickerBootcamp.swift
//  SwiftUIThinkingBootcamp
//
//  Created by Александр Полочанин on 11.10.23.
//

import SwiftUI

struct ColorPickerBootcamp: View {
    
    @State var background: Color = .green
    
    var body: some View {
        ZStack {
            
            background.ignoresSafeArea()
            
            ColorPicker("Color Picker", selection: $background, supportsOpacity: true)
                .padding()
                .background(.purple)
                .cornerRadius(15)
                .foregroundColor(.white)
                .padding(50)
                .font(.headline)
            
        }
    }
}

struct ColorPickerBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ColorPickerBootcamp()
    }
}
