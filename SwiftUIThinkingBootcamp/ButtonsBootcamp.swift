//
//  ButtonsBootcamp.swift
//  SwiftUIThinkingBootcamp
//
//  Created by Александр Полочанин on 28.09.23.
//

import SwiftUI

struct ButtonsBootcamp: View {
    
    @State var title = "This is my title"
    
    var body: some View {
        
        VStack(spacing: 20) {
            Text(title)
                .padding(.vertical, 20)
            
            Button("Press yo start") {
                self.title = "Button #1 was pressed"
            }
            .tint(.red)
            
            Button {
                self.title = "Button #2 was pressed"
            } label: {
                Text("Button")
                    .padding()
                    .foregroundColor(.white)
                    .background {
                        Capsule()
                            .frame(width: 150)
                    }
                    .font(.title2)
                    .shadow(radius: 10)
            }
            
            Button {
                self.title = "Button #3 was pressed"
            } label: {
                
                Circle()
                    .fill(Color.white)
                    .frame(width: 75, height: 75)
                    .shadow(radius: 10)
                    .overlay {
                        Image(systemName: "heart.fill")
                            .font(.largeTitle)
                            .foregroundColor(.red)
                    }
            }
            
            Button {
                self.title = "Button #4 was pressed"
            } label: {
                Text("Finish".uppercased())
                    .font(.caption)
                    .bold()
                    .padding()
                    .padding(.horizontal, 10)
                    .foregroundColor(.gray)
                    .background {
                        Capsule()
                            .stroke(lineWidth: 3)
                            .foregroundColor(.green)
                    }
            }
        }

    }
}

struct ButtonsBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ButtonsBootcamp()
    }
}
