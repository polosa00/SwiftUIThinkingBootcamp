//
//  OnAppearBootcamp.swift
//  SwiftUIThinkingBootcamp
//
//  Created by Александр Полочанин on 17.10.23.
//

import SwiftUI

struct OnAppearBootcamp: View {
    
    @State var myText = "This is starting text!"
    @State var count = 0
    
    var body: some View {
        NavigationStack {
            ScrollView {
                Text(myText)
                LazyVStack {
                    ForEach(0..<50) { _ in
                        RoundedRectangle.init(cornerRadius: 25)
                            .frame(height: 200)
                            .padding()
                            .onAppear{
                                count += 1
                            }
                    }
                }
            }
            .navigationTitle("On Appear \(count)")
            .onAppear {
                DispatchQueue.main.asyncAfter(deadline: .now() + 5) {
                    myText = " This is text was changed!"
                }
            }
        }
    }
}

struct OnAppearBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        OnAppearBootcamp()
    }
}
