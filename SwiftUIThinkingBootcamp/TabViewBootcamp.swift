//
//  TabViewBootcamp.swift
//  SwiftUIThinkingBootcamp
//
//  Created by Александр Полочанин on 12.10.23.
//

import SwiftUI

struct TabViewBootcamp: View {
    @State var selectionTabView: Int = 0
    
    
    var body: some View {
        
        VStack {
            TabView(selection: $selectionTabView) {
                
                SliderBootcamp()
                    .tabItem {
                        Text("Slider")
                        Image(systemName: "house")
                    }
                    .tag(0)
                
                StepperBootcamp(encrementWight: 100)
                    .tabItem {
                        Text("Stepper")
                        Image(systemName: "flame.fill")
                    }
                    .tag(1)
                
                ThirdTabView(selectionTabView: $selectionTabView)
                    .tabItem {
                        Text("Third")
                        Image(systemName: "person")
                    }
                    .tag(3)
            }
            .tint(.orange)
        }
        
        
    }
}

struct TabViewBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        TabViewBootcamp()
    }
}



struct ThirdTabView: View {
    @Binding var selectionTabView: Int
    var body: some View {
        ZStack {
            Color.green.ignoresSafeArea()
            Button("Go to Slider View") {
                selectionTabView = 0
            }
            .padding()
            .padding(.horizontal, 50)
            .foregroundColor(.green)
            .background(.white)
            .cornerRadius(15)
            .shadow(color: .gray.opacity(0.6), radius: 10, x: 3, y: 10)
        }
    }
}
