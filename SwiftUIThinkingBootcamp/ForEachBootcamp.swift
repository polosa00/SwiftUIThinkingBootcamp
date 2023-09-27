//
//  ForEachBootcamp.swift
//  SwiftUIThinkingBootcamp
//
//  Created by Александр Полочанин on 27.09.23.
//

import SwiftUI

struct ForEachBootcamp: View {
    
    let data = ["Hi", "Hello", "Everyone"]
    
    var body: some View {
        VStack{
            ForEach(data.indices) { index in
                VStack {
                    ZStack {
                        Rectangle()
                            .foregroundColor(.red)
                            .frame(width: 200,height: 50)
                        Text("\(data[index]) \(index) " )
                            .foregroundColor(.white)
                            .font(.title)
                            .bold()
                    }
                    .cornerRadius(10)
                    .shadow(color: .red.opacity(0.5), radius: 10, x: 5, y: 10)

                }
            }
        }
    }
}

struct ForEachBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ForEachBootcamp()
    }
}
