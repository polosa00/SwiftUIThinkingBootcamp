//
//  AlertBootcamp.swift
//  SwiftUIThinkingBootcamp
//
//  Created by Александр Полочанин on 5.10.23.
//

import SwiftUI

struct AlertBootcamp: View {
    @State var showAlert: Bool = false
    @State var alertTypes: MyAlert? = nil
    @State var background: Color = .cyan
    enum MyAlert {
        case success
        case error
    }
    
    var body: some View {
        
        ZStack {
            background.ignoresSafeArea()
            
            
            VStack(spacing: 20) {
                
                Button("Button one") {
                    showAlert.toggle()
                    alertTypes = .success
                }
                
                Button("Button two") {
                    showAlert.toggle()
                    alertTypes = .error
                }
            }
            .foregroundColor(.white)
            .alert(isPresented: $showAlert) {
                getAlert()
            }
        }
    }
    
    
    func getAlert() -> Alert {
        switch alertTypes {
        case .success:
           return Alert(
                title: Text("Alert number One"),
                message: Text("Some message for alert"),
                primaryButton: .default(Text("Accept"), action: {
                    background = .gray
                }),
                secondaryButton: .cancel()
            )
        case .error:
            return Alert(title: Text("Text for second alert"))
        
        default:
            return Alert(title: Text("ERROR"))
            
        }
    }
}

struct AlertBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        AlertBootcamp()
    }
}
