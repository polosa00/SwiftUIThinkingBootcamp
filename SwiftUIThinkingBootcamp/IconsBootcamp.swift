//
//  IconsBootcamp.swift
//  SwiftUIThinkingBootcamp
//
//  Created by Александр Полочанин on 19.09.23.
//

import SwiftUI

struct IconsBootcamp: View {
    var body: some View {
        Image(systemName: "person.fill.badge.plus")
            .renderingMode(.original)
            .font(.largeTitle)
//            .resizable()
//            .scaledToFit()
//            .scaledToFill()
//            .font(.system(size: 150))
            .foregroundColor(.red)
//            .frame(width: 200, height: 200)
//            .clipped()
    }
}

struct IconsBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        IconsBootcamp()
    }
}
