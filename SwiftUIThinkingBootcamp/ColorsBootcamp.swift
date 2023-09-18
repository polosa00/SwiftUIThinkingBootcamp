//
//  ColorsBootcamp.swift
//  SwiftUIThinkingBootcamp
//
//  Created by Александр Полочанин on 18.09.23.
//

import SwiftUI

struct ColorsBootcamp: View {
    var body: some View {
        RoundedRectangle(cornerRadius: 25)
            .fill(
//                Color.primary
//                Color.red
//                Color(uiColor: .secondarySystemBackground)
                Color("CustomColor")
            )
            .frame(width: 300, height: 200)
//            .shadow(radius: 10)
            .shadow(
                color: Color("CustomColor").opacity(0.5),
                radius: 10,
                x: 10,
                y: 15)
    }
}

struct ColorsBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ColorsBootcamp()
    }
}
