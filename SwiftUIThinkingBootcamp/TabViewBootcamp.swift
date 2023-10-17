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
        ZStack {
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
                
                ForthTabView()
                    .tabItem {
                        Text("PageTab")
                        Image(systemName: "book")
                    }
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

struct ForthTabView: View {
    
    let icons: [String] = [
        "heart", "house", "person", "globe"
    ]
    var body: some View {
        ZStack {
//            Color.red.ignoresSafeArea()
            
            TabView {
                ForEach(icons, id: \.self) { icon in
                    Image(systemName: icon)
                        .resizable()
                        .scaledToFit()
                        .frame(width: 200, height: 200)
                        .foregroundColor(.red)
                        .shadow(color: .green.opacity(0.5), radius: 10, x: 2, y: 5)
                }
            }
            .tabViewStyle(.page)
            .frame(width: 350, height: 300)
            .background{
                RadialGradient(
                    colors: [Color("BlueOne"), Color("BlueTwo")],
                    center: .topLeading,
                    startRadius: 10,
                    endRadius: 400
                )
            }
            .cornerRadius(20)
            
        } 
    }
}

struct ForthTabView_Previews: PreviewProvider {
    static var previews: some View {
        ForthTabView()
    }
}
