//
//  ListBootcamp.swift
//  SwiftUIThinkingBootcamp
//
//  Created by Александр Полочанин on 1.10.23.
//

import SwiftUI

struct ListBootcamp: View {
    @State var fruits = ["apple", "banana", "peach", "orange"]
    @State var veggies = ["tomato",  "potato", "carrot"]
    
    var body: some View {
        NavigationView{
            List{
                Section {
                    ForEach(fruits, id: \.self) { fruit in
                        NavigationLink {
                            NavigatedScreen()
                            NavigatedScreen(tittle: fruit.capitalized)
                        } label: {
                            
                            Text(fruit.capitalized)
                                .font(.caption)
                                .foregroundColor(.orange)
                        }

                    }
                    .onDelete(perform: delete)
                    .onMove(perform: move)
                    
                    
                } header: {
                    HStack{
                        Text("Fruits")
                        Image(systemName: "flame.fill")
                    }
                    .foregroundColor(Color.cyan)
                    .font(.headline)
                }
                
                Section {
                    ForEach(veggies, id: \.self) { veggies in
                        Text(veggies.capitalized)
                    }
                } header: {
                    HStack{
                        Text("Veggies")
                        Image(systemName: "heart.fill")
                    }
                }
            
            }
            .tint(.green)
//            .listStyle(InsetGroupedListStyle())
            .navigationTitle("Tittle")
            .navigationBarItems(
                leading: EditButton(),
                trailing: addButton
            )
        }
        .tint(.red)
    }
    
    var addButton: some View {
        Button("Add", action: add)
    }
    
    func delete(_ indexSet: IndexSet) {
        fruits.remove(atOffsets: indexSet)

    }
    
    func move(indices: IndexSet, newOffset: Int) {
        fruits.move(fromOffsets: indices, toOffset: newOffset)
    }
    
    func add() {
        fruits.append("coconut")
    }
}

struct NavigatedScreen: View {
    @State var tittle = ""
    var body: some View {
        Text(tittle)
    }
  
}

struct ListBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ListBootcamp()
    }
}
