//
//  NavigationViewBootcamp.swift
//  SwiftUIThinkingBootcamp
//
//  Created by Александр Полочанин on 1.10.23.
//

import SwiftUI

struct NavigationViewBootcamp: View {
    var body: some View {
        NavigationStack {
            ZStack {
                Color.purple.ignoresSafeArea()
                VStack {
                    NavigationLink("Go to second screen", destination: SecondScreen())
                    
                    Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                    Text("Hello world")
                }
                .navigationTitle("Text for TITLE")
                .navigationBarItems(
                    leading:
                        HStack{
                            Image(systemName: "person.fill")

                            Text("Some text will be here")
                                .font(.title)
                        },

                    trailing:
                        NavigationLink(
                            destination: SecondScreen(),
                            label: {
                                Image(systemName: "gear")
                            })
                        .tint(.white)
                )
              
    
            }
        }
    }
}

struct SecondScreen: View {
    @Environment(\.dismiss) var dissmis
    var body: some View {
        ZStack {
            Color.green
                .ignoresSafeArea()
                .navigationTitle("Second Screen")
                .navigationBarBackButtonHidden(true)
            VStack {
                Text("Second view!")
                    .font(.title2)
                Button {
                    dissmis.callAsFunction()
                } label: {
                    Text("back BUTTON")
                }

            }
            
            
        }
    }
}



struct NavigationViewBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        NavigationViewBootcamp()
    }
}
