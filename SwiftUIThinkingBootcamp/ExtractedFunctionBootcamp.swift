//
//  ExtractedFunctionBootcamp.swift
//  SwiftUIThinkingBootcamp
//
//  Created by Александр Полочанин on 3.10.23.
//

import SwiftUI

struct ExtractedFunctionBootcamp: View {
    
    @State var color = Color.purple
    
    var body: some View {
        ZStack {
            
            //background
            color.ignoresSafeArea()
            
            //content
            contententView
          
        }
    }
    func pressedButton() {
        color = .cyan
    }
    
    var contententView: some View {
        VStack {
            Text("Title!")
                .bold()
                .font(.largeTitle)
                .foregroundColor(.green)
            Button {
                pressedButton()
            } label: {
                Text("Pressed me!")
                    .foregroundColor(.white)
                    .frame(width: 200,height: 60)
                    .background(.black)
                    .cornerRadius(15)
            }
        }
    }
}

struct ExtractedFunctionBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ExtractedFunctionBootcamp()
    }
}
