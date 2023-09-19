//
//  GradientsBootcamp.swift
//  SwiftUIThinkingBootcamp
//
//  Created by Александр Полочанин on 19.09.23.
//

import SwiftUI

struct GradientsBootcamp: View {
    var body: some View {
        RoundedRectangle(cornerRadius: 25)
            .fill(
//                Color.red
//                LinearGradient(
//                    gradient: Gradient(
//                        colors: [Color("BlueOne"), Color("BlueTwo")] ),
//                    startPoint: .topLeading,
//                    endPoint: .bottom
//                )
                
                
//                RadialGradient(
//                    colors: [Color("BlueOne"), Color("BlueTwo")],
//                    center: .topLeading,
//                    startRadius: 10,
//                    endRadius: 400
//                )
                
                AngularGradient(
                    colors: [Color("BlueOne"), Color("BlueTwo")],
                    center: .topLeading,
                    angle: .degrees(180 + 45)
                )
            )
            .frame(width: 300, height: 200)
    }
}

struct GradientsBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        GradientsBootcamp()
    }
}
