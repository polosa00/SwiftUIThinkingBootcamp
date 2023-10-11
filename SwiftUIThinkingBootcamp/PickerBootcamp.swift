//
//  PickerBootcamp.swift
//  SwiftUIThinkingBootcamp
//
//  Created by Александр Полочанин on 11.10.23.
//

import SwiftUI

struct PickerBootcamp: View {
    
    @State var selectionWheel = "1"
    @State var selectionMenu = ""
    @State var selectionSegmented = "Most popular"
    let options = [
    "Most popular", "Most Recent", "Most Liked"
    ]

    init() {
        UISegmentedControl.appearance().selectedSegmentTintColor = .red
        let attributes: [NSAttributedString.Key:Any] = [
            .foregroundColor : UIColor.white
        ]
        
        UISegmentedControl.appearance().setTitleTextAttributes(attributes, for: .selected)
    }
    var body: some View {
    
        ScrollView {
            VStack(spacing: 40) {
                Spacer()
                HStack {
                    Text("Text from wheelPicker: ")
                    Text(selectionWheel)
                }
                .font(.title2)
                
                Picker("Picker", selection: $selectionWheel) {
                    ForEach(1..<10) { number in
                        Text("\(number)").tag("\(number)")
                    }
                }
                .pickerStyle(WheelPickerStyle())
                
//                HStack {
//                    Text("Text from menuPicker: ")
//                    Text(selectionMenu)
//                }
//                .font(.title2)
                
                Picker(
                    selection: $selectionMenu) {
                        ForEach(options, id: \.self) { option in
                            Text(option)
                                .tag(option)
    
                        }
                    } label: {
                        HStack {
                            Text("Content: ")
                            Text(selectionMenu)
                        }
                        
                    }
                    .tint(.white)
                    .padding()
                    .background(.blue)
                    .cornerRadius(15)
                    .shadow(color: .blue.opacity(0.6), radius: 10, x: 5, y: 10)
                    .pickerStyle(MenuPickerStyle())
                
                    
                Picker(selection: $selectionSegmented) {
                    ForEach(options.indices) { index in
                        Text(options[index])
                            .tag(options[index])
                    }
                } label: {
                    
                }
                .pickerStyle(SegmentedPickerStyle())



                
                
                
                
                Spacer()
            }
            .padding()
        }
    }
}

struct PickerBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        PickerBootcamp()
    }
}
