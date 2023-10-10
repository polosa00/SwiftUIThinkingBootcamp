//
//  TextEditorBootcamp.swift
//  SwiftUIThinkingBootcamp
//
//  Created by Александр Полочанин on 10.10.23.
//

import SwiftUI

struct TextEditorBootcamp: View {
    
    @State var textEditorText = ""
    @State var dataForList = ""
    
    var body: some View {
        NavigationStack {
            VStack {
                TextEditor(text: $textEditorText)
                    .frame(height: 250)
                    .colorMultiply(.red)
                Button {
                    dataForList = textEditorText
                } label: {
                    Text ("SAVE")
                        .frame(maxWidth: .infinity)
                        .frame(height: 45)
                        .background(.blue)
                        .foregroundColor(.white)
                        .cornerRadius(15)
                    
                    
                }

                Spacer()
                Text(dataForList)
            }
            .padding()
            .navigationTitle("TexEditor Bootcamp")
            .background(.green)
        }
        
    }
}

struct TextEditorBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        TextEditorBootcamp()
    }
}
