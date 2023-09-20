//
//  BackgroundAndOverlayBootcamp.swift
//  SwiftUIThinkingBootcamp
//
//  Created by Александр Полочанин on 20.09.23.
//

import SwiftUI

struct BackgroundAndOverlayBootcamp: View {
    var body: some View {
//        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
//            .background(
////                Color.red
////                LinearGradient(
////                    colors: [Color.red, Color.blue],
////                    startPoint: .leading,
////                    endPoint: .trailing
////                )
//                Circle()
//                    .fill(
//                        LinearGradient(
//                            colors: [Color.red, Color.blue],
//                            startPoint: .leading,
//                            endPoint: .trailing
//                        )
//                    )
//                    .frame(width: 100, height: 100)
//            )
//            .background(
//                Circle(                )
//                    .fill(
//                        LinearGradient(
//                            colors: [Color.blue, Color.red],
//                            startPoint: .leading,
//                            endPoint: .trailing
//                        )
//                    )
//                    .frame(width: 120, height: 120 )
//            )
        
        
//        Circle()
//            .fill(.pink)
//            .frame(width: 100,height: 100)
//            .overlay(
//                Text("1")
//                    .font(.largeTitle)
//                    .foregroundColor(.white)
//            )
//            .background(
//                Circle()
//                    .fill(.purple)
//                    .frame(width: 110, height: 110)
//                )
        
        
//        Rectangle()
//            .frame(width: 100, height: 100)
//            .overlay(
//                Rectangle()
//                    .fill(.blue)
//                    .frame(width: 50, height: 50)
//                , alignment: .topLeading
//            )
//            .background(
//                Rectangle()
//                    .fill(.red)
//                    .frame(width: 150, height: 150)
//                , alignment: .bottomTrailing
//            )
        Image(systemName: "heart.fill")
            .font(.system(size: 40))
            .foregroundColor(.white)
            .background(
                Circle()
                    .fill(
                        LinearGradient(
                            colors: [Color("BlueOne"), Color("BlueTwo")],
                            startPoint: .topLeading,
                            endPoint: .bottomTrailing
                        )
                    )
                    .frame(width: 100, height: 100)
                    .shadow(color: Color("BlueTwo"), radius: 10, x: 0.0, y: 10)
                    .overlay(
                        Circle()
                            .fill(.blue)
                            .frame(width: 35, height: 35)
                            .shadow(color:  Color("BlueTwo"), radius: 10, x: 5, y: 5)
                            .overlay(
                                Text("5")
                                    .foregroundColor(.white)
                                    .font(.headline)
                            )
                        , alignment: .bottomTrailing
                    )
            )
    }
}

struct BackgroundAndOverlayBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        BackgroundAndOverlayBootcamp()
    }
}
