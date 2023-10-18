//
//  ModelBootcamp.swift
//  SwiftUIThinkingBootcamp
//
//  Created by Александр Полочанин on 18.10.23.
//

import SwiftUI


struct User: Identifiable {
    
    let id: String = UUID().uuidString
    let displayName: String
    let userNick: String
    let userFollowersCount: Int
    let isVerified: Bool
     
}

struct ModelBootcamp: View {
    
    @State var users: [User] = [
        User(displayName: "Alex", userNick: "polosa00", userFollowersCount: 321, isVerified: false),
        User(displayName: "Pavel", userNick: "paha88", userFollowersCount: 973, isVerified: false),
        User(displayName: "Jhenya", userNick: "jeka", userFollowersCount: 331, isVerified: true),
        User(displayName: "Ilia", userNick: "Ili_as", userFollowersCount: 3321, isVerified: true)
    ]
    
    var body: some View {
        
        NavigationStack {
            VStack {
                List {
                    ForEach(users) { user in
                        HStack {
                            Circle()
                                .frame(width: 35)
                            VStack(alignment: .leading) {
                                Text(user.displayName)
                                    .font(.headline)
                                Text("@\(user.userNick)")
                                    .font(.caption)
                            }
                            Spacer()
                            if user.isVerified {
                                Image(systemName: "checkmark.seal.fill")
                                    .foregroundColor(.green)
                            } else {
                                Image(systemName: "multiply.circle")
                                    .foregroundColor(.red)
                            }
                            VStack{
                                Text("\(user.userFollowersCount)")
                                    .font(.headline)
                                Text("Followers")
                                    .font(.caption)
                            }
                        }
                    }
                    .frame(height: 50)
                    
                }
            }
            .navigationTitle("Users")
            
        }
    }
}

struct ModelBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ModelBootcamp()
    }
}
