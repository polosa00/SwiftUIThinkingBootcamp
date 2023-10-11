//
//  ToggleBootcamp.swift
//  SwiftUIThinkingBootcamp
//
//  Created by Александр Полочанин on 11.10.23.
//

import SwiftUI

struct ToggleBootcamp: View {
    
    @State var toggleIsOn: Bool = false
    
    var body: some View {
        VStack {
            HStack {
                Text("Status: ")
                Text(toggleIsOn ? "Online" : "Offline")
            }
            
            HStack{
                Toggle(isOn: $toggleIsOn) {
                    Text("Change status: ")
                }
            }
            Spacer()
        }
        .padding(.horizontal, 100)
        .tint(.purple )
    }
}

struct ToggleBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ToggleBootcamp()
    }
}
