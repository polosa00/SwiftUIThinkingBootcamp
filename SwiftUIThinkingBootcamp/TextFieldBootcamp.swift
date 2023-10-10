//
//  TextFieldBootcamp.swift
//  SwiftUIThinkingBootcamp
//
//  Created by Александр Полочанин on 10.10.23.
//

import SwiftUI

struct TextFieldBootcamp: View {
    @State var textFieldText = ""
    @State var dataForList: [String] = []
    
    var body: some View {
        NavigationStack {
            VStack {
                TextField("Enter your name", text: $textFieldText)
                    .padding()
                    .background(.gray.opacity(0.3))
                    .cornerRadius(10)
                    .foregroundColor(isChecked() ? .green : .red)
                Button {
                    saveText()
                } label: {
                    Text("Save".uppercased())
                        .foregroundColor(.white)
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(isChecked() ? .blue : .gray)
                        .cornerRadius(10)
                        .font(.headline)
                }
                .disabled(!isChecked())
                 Spacer ()
                
                ForEach(dataForList, id: \.self) { data in
                    Text(data)
                        .font(.headline)
                }
                Spacer()
            }
            .padding()
            .navigationTitle("TextField Bootcamp")
        }
    }
    
    func isChecked() -> Bool {
        if textFieldText.count >= 4 {
            return true
        }
        return false
    }
    
    func saveText() {
        dataForList.append(textFieldText)
        textFieldText = ""
    }
}

struct TextFieldBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        TextFieldBootcamp()
    }
}
