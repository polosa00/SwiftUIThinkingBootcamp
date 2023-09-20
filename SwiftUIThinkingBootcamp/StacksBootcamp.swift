//
//  StacksBootcamp.swift
//  SwiftUIThinkingBootcamp
//
//  Created by Александр Полочанин on 20.09.23.
//

import SwiftUI

struct StacksBootcamp: View {
    var body: some View {
        ZStack (alignment: .top) {
            Rectangle()
                .fill(.yellow)
                .frame(width: 300, height: 500, alignment: .center)
            VStack(alignment: .leading, spacing: 30) {
                Rectangle()
                    .fill(.red)
                    .frame(width: 150, height: 150)
                Rectangle()
                    .fill(.green)
                    .frame(width: 100, height: 100)
                HStack {
                    Rectangle()
                        .fill(.purple)
                    .frame(width: 50, height: 50)
                    Rectangle()
                        .fill(.red)
                        .frame(width: 75, height: 75)
                    Rectangle()
                        .fill(.blue)
                        .frame(width: 25, height: 25)
                }
                .background(.white)
            
            }
            .background(.black)
        }
        
    }
}

struct StacksBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        StacksBootcamp()
    }
}
