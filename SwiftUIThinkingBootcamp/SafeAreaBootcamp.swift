//
//  SafeAreaBootcamp.swift
//  SwiftUIThinkingBootcamp
//
//  Created by Александр Полочанин on 28.09.23.
//

import SwiftUI

struct SafeAreaBootcamp: View {
    var body: some View {
        
        ScrollView {
            Text("Title will be here")
                .font(.largeTitle)
                .bold()
                .frame(maxWidth: .infinity, alignment: .leading)
            ForEach(0..<10) { index in
                RoundedRectangle(cornerRadius: 25)
                    .frame(height: 150)
                    .foregroundColor(.white)
                    .shadow(color: .black.opacity(0.5), radius: 10, x: 5, y: 10)
                    .padding(20)
            }
            
        }
        .background {
            LinearGradient(colors: [Color.red, Color.blue], startPoint: .bottomLeading, endPoint: .topTrailing)
                .ignoresSafeArea()
        }
    }
}

struct SafeAreaBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        SafeAreaBootcamp()
    }
}
