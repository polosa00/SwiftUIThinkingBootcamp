//
//  IfLetGuardBootcamp.swift
//  SwiftUIThinkingBootcamp
//
//  Created by Александр Полочанин on 17.10.23.
//

import SwiftUI

struct IfLetGuardBootcamp: View {
    
    @State var currentUserId: String? = "213121sq2"
    @State var isLoading: Bool = false
    @State var displayText: String? = nil
    @State var isError: Bool = false

    
    var body: some View {
        NavigationStack {
            VStack(spacing: 20) {
                Text("Working with safe cod!")
                
                if isLoading {
                    ProgressView()
                }
                
                if let text = displayText {
                    Text(text)
                        .font(.title)
                        .foregroundColor(isError ? .red : .green)
                        .padding()
                }
            
                Spacer()
            }
            .navigationTitle("Safe Code")
            .onAppear{
                loadData()
            }
        }
        
        
    }
    
    func loadData() {
        
        guard let userId = currentUserId else {
            displayText = "Error!! There is no User ID"
            isError = true
            return
        }
        
        isLoading = true
        DispatchQueue.main.asyncAfter(deadline: .now() + 5){
            displayText = "There is loading data! User id is: \(userId)!!"
            isLoading = false
            
        }
    }
}

struct IfLetGuardBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        IfLetGuardBootcamp()
    }
}
