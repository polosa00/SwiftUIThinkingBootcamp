//
//  TextBootcamp.swift
//  SwiftUIThinkingBootcamp
//
//  Created by Александр Полочанин on 18.09.23.
//

import SwiftUI

struct TextBootcamp: View {
    var body: some View {
        Text("Hello, World! This is the Swiftful Thinking Bootcamp. I am really enjoying this course and learning a lot")
//            .font(.body)
////            .fontWeight(.semibold)
//            .bold()
////            .underline()
//            .underline(
//                true,
//                pattern: .dashDot,
//                color: .cyan
//            )
//            .italic()
//            .strikethrough(
//                true,
//                pattern: .dashDotDot,
//                color: .red
//            )
//            .font(.system(size: 24, weight: .semibold, design: .serif))
//            .baselineOffset(12)
//            .kerning(1)
            .multilineTextAlignment(.leading)
            .foregroundColor(.red)
            .frame(width: 200, height: 100, alignment: .center)
            .minimumScaleFactor(0.1)
        
        
        
    }
}

struct TextBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        TextBootcamp()
    }
}
