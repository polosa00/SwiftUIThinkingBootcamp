//
//  ImageBootcamp.swift
//  SwiftUIThinkingBootcamp
//
//  Created by Александр Полочанин on 19.09.23.
//

import SwiftUI

struct ImageBootcamp: View {
    var body: some View {
        Image("heartBit")
            .resizable()
            .renderingMode(.template)            .aspectRatio(contentMode: .fit)
            .frame(width: 300, height: 200)
            .foregroundColor(.blue)
//            .clipped()
//            .cornerRadius(150)
//            .clipShape(
////                Circle()
////                RoundedRectangle(cornerRadius: 30)
////                Ellipse()
//                Circle()
//            )
    }
}

struct ImageBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ImageBootcamp()
    }
}
