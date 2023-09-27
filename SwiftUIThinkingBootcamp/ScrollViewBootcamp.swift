//
//  ScrollViewBootcamp.swift
//  SwiftUIThinkingBootcamp
//
//  Created by Александр Полочанин on 27.09.23.
//

import SwiftUI

struct ScrollViewBootcamp: View {
    var body: some View {
        ScrollView {
            LazyVStack {
                ForEach(0..<150) { indexOne in
                        ScrollView(.horizontal, showsIndicators: false) {
                            LazyHStack {
                                ForEach(1..<200) { indexTwo in
                                    ZStack{
                                        RoundedRectangle(cornerRadius: 25)
                                            .fill(Color.white)
                                            .frame(width: 150, height: 75)
                                            .shadow(radius: 10)
                                            .padding()
                                            .overlay {
                                                    Rectangle()
                                                        .fill(Color.pink)
                                                        .cornerRadius(6)
                                                        .frame(width: 80, height: 20)
                                                        .offset(x: 55, y: -30)
                                                    Text("HIndex\(indexOne)")
                                                        .foregroundColor(.white)
                                                        .offset(x: 55, y: -30)
                                                
                                            }
                                        Text("Vertical index: \(indexTwo)")
                                        
                                    }
                                }
                            }
                        }
                    
                    
                }
              
            }
        }
    }
    
}

struct ScrollViewBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ScrollViewBootcamp()
    }
}
