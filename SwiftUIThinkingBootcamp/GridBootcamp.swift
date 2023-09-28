//
//  GridBootcamp.swift
//  SwiftUIThinkingBootcamp
//
//  Created by Александр Полочанин on 28.09.23.
//

import SwiftUI

struct GridBootcamp: View {
    
    let columns: [GridItem] = [
        GridItem(.flexible(), spacing: nil, alignment: nil),
        GridItem(.flexible(), spacing: nil, alignment: nil),
        GridItem(.flexible(), spacing: nil, alignment: nil)
    ]
    
    var body: some View {
        ScrollView {
            RoundedRectangle(cornerRadius: 15)
                .fill(Color.white)
                .frame(width: 350,height: 400)
                .shadow(radius: 10)
            
            LazyVGrid(
                columns: columns,
                alignment: .center,
                spacing: nil,
                pinnedViews: [.sectionHeaders]) {
                    Section {
                        ForEach(0..<24) { index in
                            Rectangle()
                                .frame(height: 100)
                        }
                    } header: {
                        Text("Section 1")
                            .frame(maxWidth: .infinity)
                            .frame(height: 50)
                            .background(.red)
                            .font(.title2)
                            .foregroundColor(.white)
                            .bold()
                            .padding(.bottom,15)
                            .shadow(radius: 10)
                        
                    }
                    
                    Section {
                        ForEach(0..<24) { index in
                            Rectangle()
                                .fill(Color.gray)
                                .frame(height: 100)
                        }
                    } header: {
                        Text("Section 2")
                            .frame(maxWidth: .infinity)
                            .frame(height: 50)
                            .background(.green)
                            .font(.title2)
                            .foregroundColor(.white)
                            .bold()
                            .padding(.bottom,15)
                            .shadow(radius: 10)
                    }
                }
        }
        .padding(.horizontal, 6)
    }
}

struct GridBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        GridBootcamp()
    }
}
