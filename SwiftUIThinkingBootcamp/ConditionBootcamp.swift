//
//  ConditionBootcamp.swift
//  SwiftUIThinkingBootcamp
//
//  Created by Александр Полочанин on 3.10.23.
//

import SwiftUI

struct ConditionBootcamp: View {
    @State var showCircle: Bool = true
    @State var showRectangle: Bool = false
    @State var showProgressView: Bool = false

    var body: some View {
        ZStack {
            Color.white.ignoresSafeArea()
            
            
            VStack {
                Button("IS LOADING: \(showProgressView.description.uppercased()) ") {
                    showProgressView.toggle()
                }
                
                if showProgressView {
                    ProgressView()
                        .tint(.purple)
                }
                Spacer()
            }
            
//            VStack {
//
//                Button {
//                    showCircle.toggle()
//
//                } label: {
//                    ZStack{
//                        RoundedRectangle(cornerRadius: 25)
//                            .frame(width: 350, height: 60)
//                        Text("Circle isHiden: \(showCircle.description)")
//                            .foregroundColor(.white)
//                            .font(.title2)
//                            .bold()
//                    }
//                }
//
//                Button("Rectangle isHiden: \(showRectangle.description)") {
//                    showRectangle.toggle()
//                }
//
//                if !showCircle {
//                    Circle()
//                        .frame(width: 75)
//                }
//
//                if !showRectangle {
//                    Rectangle()
//                        .frame(width: 150, height: 75)
//                }
//
//                if showCircle && showRectangle {
//                    RoundedRectangle(cornerRadius: 25)
//                        .frame(width: 150, height: 75)
//                }
//            }
        }
    }
}

struct ConditionBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ConditionBootcamp()
    }
}
