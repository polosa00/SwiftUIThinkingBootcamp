//
//  StepperBootcamp.swift
//  SwiftUIThinkingBootcamp
//
//  Created by Александр Полочанин on 12.10.23.
//

import SwiftUI

struct StepperBootcamp: View {
    @State var stepperValue: Int = 0
    @State var encrementWight: CGFloat = 100
    
    var body: some View {
        
        VStack(spacing: 40) {
            Stepper("Stepper \(stepperValue)", value: $stepperValue)
            
            Rectangle()
                .frame(width: encrementWight, height: 100)
                .cornerRadius(15)
            
            Stepper("Stepper") {
                ecrementValue(50)
            } onDecrement: {
                ecrementValue(-50)
            }

        }
        .padding(.horizontal, 50
        )
    }
    
    func ecrementValue(_ value: CGFloat) {
        withAnimation(.easeInOut) {
            encrementWight += value
        }
    }
}

struct StepperBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        StepperBootcamp()
    }
}
