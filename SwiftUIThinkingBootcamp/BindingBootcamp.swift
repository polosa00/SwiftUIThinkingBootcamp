//
//  BindingBootcamp.swift
//  SwiftUIThinkingBootcamp
//
//  Created by Александр Полочанин on 3.10.23.
//

import SwiftUI

struct BindingBootcamp: View {
    
    @State var backgroundColor: Color = .cyan
    @State var title = "Titile"
    var body: some View {
        ZStack{
            //background
            backgroundColor.ignoresSafeArea()
            
            //content
            contentView
            
        }
    }
    
    var contentView: some View {
        VStack {
            Text(title)
            ButtonView(backgroundColor: $backgroundColor, title: $title)
        }
    }
}

struct BindingBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        BindingBootcamp()
    }
}

struct ButtonView: View {
    
    @Binding var backgroundColor: Color
    @State var buttonColor = Color.green
    @Binding var title: String
    
    var body: some View {
        Button {
            backgroundColor = .gray
            buttonColor = .orange
            title = "This is new title"
        } label: {
            Text("Press me")
                .foregroundColor(.pink)
                .padding()
                .padding(.horizontal)
                .background(buttonColor)
                .cornerRadius(15)
            
        }
    }
}
