//
//  ExtractingSubviewsBoottcamp.swift
//  SwiftUIThinkingBootcamp
//
//  Created by Александр Полочанин on 3.10.23.
//

import SwiftUI


struct ExtractingSubviewsBoottcamp: View {
    var body: some View {
        ZStack {
            //background
            Color.purple.ignoresSafeArea()
            
            //content
            contentView
        }
    }
    
    var contentView: some View {
        VStack(spacing: 14) {
            MyItem(title: "Apple", count: "23", color: .red)
            MyItem(title: "Banana", count: "1", color: .yellow)
            MyItem(title: "Orange", count: "234", color: .orange)
        }
    }
}

struct ExtractingSubviewsBoottcamp_Previews: PreviewProvider {
    static var previews: some View {
        ExtractingSubviewsBoottcamp()
    }
}



struct MyItem: View {
    let title: String
    let count: String
    let color: Color
    
    var body: some View {
        VStack{
            Text(title)
            Text(count)
        }
        .padding()
        .background(color)
        .cornerRadius(15)
    }
}
