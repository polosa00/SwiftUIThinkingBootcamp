//
//  StateBootcamp.swift
//  SwiftUIThinkingBootcamp
//
//  Created by Александр Полочанин on 28.09.23.
//

import SwiftUI

struct StateBootcamp: View {
    @State var colorOne: Color = .pink
    @State var colorTwo: Color = .cyan
    @State var colorRange: [Color] = [Color.yellow, Color.red, Color.blue, Color.green]
    @State var title = "This is my title!"
    @State var counter = 0
    
    var body: some View {
        ZStack {
            LinearGradient(colors: [colorOne, colorTwo], startPoint: .bottomLeading, endPoint: .topTrailing)
                .ignoresSafeArea()
            
            VStack(spacing: 10){
                Text(title)
                    .font(.largeTitle)
                    .multilineTextAlignment(.center)
                    .lineLimit(3)
                    
                Text("Counter: \(counter)!")
                    .underline()
                    .font(.title)
                
                HStack {
                    Button("Button 1") {
                        colorOne = colorRange.randomElement()!
                        title = "Color One is:\(colorOne), Color Two is: \(colorTwo)"
                        counter += 1
                    }
                    
                    Button("Button 2") {
                        colorTwo = colorRange.randomElement()!
                        title = "Color One is:\(colorOne), Color Two is: \(colorTwo)"
                        counter -= 1
                    }
                }
                .padding(.top, 40)
            }
            .foregroundColor(.white)
        }
    }
}

struct StateBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        StateBootcamp()
    }
}
