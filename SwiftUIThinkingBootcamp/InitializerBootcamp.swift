//
//  InitializerBootcamp.swift
//  SwiftUIThinkingBootcamp
//
//  Created by Александр Полочанин on 26.09.23.
//

import SwiftUI

struct InitializerBootcamp: View {
    
    let background: Color
    let count: Int
    
    enum Fruit {
        case apple
        case orange
    }
    
    init(count: Int, fruit: Fruit) {
        self.count = count
        
        if fruit == .orange {
            self.background = .orange
        } else {
            self.background = .red
        }
    }
    
    var body: some View {
        VStack(spacing: 15) {
            Text("\(count)")
                .font(.largeTitle)
                .underline()
                .foregroundColor(.white)
            Text("Apples")
                .font(.title)
                .foregroundColor(.white)
            
        }
        .frame(width: 150, height: 100)
        .background(background)
        .cornerRadius(10)
    }
}

struct InitializerBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        VStack (spacing: 20) {
            InitializerBootcamp(count: 55, fruit: .orange)
            InitializerBootcamp(count: 888, fruit: .apple)
        }
    }
}
