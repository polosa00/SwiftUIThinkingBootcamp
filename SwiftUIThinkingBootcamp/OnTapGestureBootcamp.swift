//
//  OnTapGestureBootcamp.swift
//  SwiftUIThinkingBootcamp
//
//  Created by Александр Полочанин on 18.10.23.
//

import SwiftUI

struct OnTapGestureBootcamp: View {
    
    @State var isSelected: Bool = false
    
    var body: some View {
        
        VStack(spacing: 40) {
            RoundedRectangle(cornerRadius: 25)
                .frame(height: 200)
                .foregroundColor(isSelected ? .indigo : .orange)
            
            Button {
                isSelected.toggle()
            } label: {
                Text("Button")
                    .font(.headline)
                    .foregroundColor(.white)
                    .frame(maxWidth: .infinity)
                    .frame(height: 40)
                    .background(.pink)
                    .cornerRadius(25)
                
            }
            
            Text("Tap GESTURE")
                .font(.headline)
                .foregroundColor(.white)
                .frame(maxWidth: .infinity)
                .frame(height: 40)
                .background(.pink)
                .cornerRadius(25)
                .onTapGesture(count: 2) {
                    isSelected.toggle()
                }
            
            Spacer()

        }
        .padding()
    }
}

struct OnTapGestureBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        OnTapGestureBootcamp()
    }
}
