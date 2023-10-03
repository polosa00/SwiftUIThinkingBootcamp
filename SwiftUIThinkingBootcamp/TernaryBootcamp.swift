//
//  TernaryBootcamp.swift
//  SwiftUIThinkingBootcamp
//
//  Created by Александр Полочанин on 3.10.23.
//

import SwiftUI

struct TernaryBootcamp: View {
    @State var isStartingState: Bool = false
    
    var body: some View {
        
        VStack(spacing: 20){
            Button("Button \(isStartingState.description)") {
                isStartingState.toggle()
            }
            RoundedRectangle(cornerRadius: isStartingState ? 25 : 0)
                .fill( isStartingState ? Color.cyan : Color.red)
                .frame(
                    width: isStartingState ? 75 : 150,
                    height: isStartingState ? 150 : 75
                )
                
            
            Text(isStartingState ? "Is ENDING" : "Is STARTING")
        }
    }
}

struct TernaryBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        TernaryBootcamp()
    }
}
