//
//  PaddingAndSpacerBootcamp.swift
//  SwiftUIThinkingBootcamp
//
//  Created by Александр Полочанин on 20.09.23.
//

import SwiftUI

struct PaddingAndSpacerBootcamp: View {
    var body: some View {
        VStack (alignment: .leading) {
            Text("Hello, world!")
                .font(.largeTitle)
                .fontWeight(.semibold)
                .padding(.bottom, 20)
            Text("This is the description of that we will do on this screen. It is multiple lines and we will align the text to leading edge.")
                
        }
//        .background(.green)
        .foregroundColor(.indigo)
        .padding()
        .background(
            Color("BlueOne")
                .cornerRadius(10)
                .shadow(color: Color("BlueOne").opacity(0.5), radius: 10, x: 0, y: 10)
        )
    }
}

struct PaddingAndSpacerBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        PaddingAndSpacerBootcamp()
    }
}
