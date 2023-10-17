//
//  DarckModeBootcamp.swift
//  SwiftUIThinkingBootcamp
//
//  Created by Александр Полочанин on 17.10.23.
//

import SwiftUI

struct DarckModeBootcamp: View {
    
    @Environment(\.colorScheme) var colorScheme
    
    var body: some View {
        NavigationStack {
            ScrollView {
                VStack(spacing: 20) {
                    Text("This color is primary!")
                        .foregroundColor(.primary)
                    Text("This color is seconadry")
                        .foregroundColor(.secondary)
                    Text("This color is BLACK")
                        .foregroundColor(.black)
                    Text("This color is WHITE")
                        .foregroundColor(.white)
                    Text("This is adaptive color")
                    Text("This is text locally adaptive")
                        .foregroundColor(colorScheme == .light ? .indigo : .orange)
                    
                }
            }
            .navigationTitle("Dark Mode Bootcamp")
            .navigationBarTitleDisplayMode(.large)
            .foregroundColor(Color("AdaptiveColor"))
        }
    }
}

struct DarckModeBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            DarckModeBootcamp()
                .preferredColorScheme(.light)
            DarckModeBootcamp()
                .preferredColorScheme(.dark)
            
        }
    }
}
