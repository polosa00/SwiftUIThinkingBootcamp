//
//  ShapesBootcamp.swift
//  SwiftUIThinkingBootcamp
//
//  Created by Александр Полочанин on 18.09.23.
//

import SwiftUI

struct ShapesBootcamp: View {
    var body: some View {
//        Circle()
//        Ellipse()
//        Capsule(style: .continuous)
//        Rectangle()
        RoundedRectangle(cornerRadius: 10)
//            .fill(.cyan)
//            .foregroundColor(.pink)
//            .stroke()
//            .stroke(Color(.red))
//            .stroke(Color.red, lineWidth: 5)
//            .stroke(Color.blue, style: StrokeStyle(lineWidth: 30, lineCap: .butt,dash: [0.5]))
            .trim(from: 0.4, to: 1.0)
//            .stroke(Color.purple, lineWidth: 50)
            .frame(width: 300, height: 200)
    }
}

struct ShapesBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ShapesBootcamp()
    }
}
