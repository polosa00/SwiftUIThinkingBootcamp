//
//  ContextMenuBootcamp.swift
//  SwiftUIThinkingBootcamp
//
//  Created by Александр Полочанин on 9.10.23.
//

import SwiftUI

struct ContextMenuBootcamp: View {
    @State var backgroundColor: Color = .gray
    
    
    var body: some View {
        VStack(alignment: .leading, spacing: 10.0) {
            Image(systemName: "house.fill")
                .font(.title)
            Text("Sfiftful Thinking")
                .font(.headline)
            Text("How to use Context Menu")
                .font(.subheadline)
        }
        .foregroundColor(.white)
        .padding(20)
        .background(backgroundColor.cornerRadius(15))
        .contextMenu(menuItems:  {
            Button("Share post") {
                backgroundColor = .red
            }
            
            Button {
                backgroundColor = .purple
            } label: {
                Label("Repost", systemImage: "heart.fill")
            }
            
            Button {
                backgroundColor = .yellow
            } label: {
                HStack {
                    Text("Delete")
                    Image(systemName: "flame.fill")
                }
            }


        })
    }
}

struct ContextMenuBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ContextMenuBootcamp()
    }
}
