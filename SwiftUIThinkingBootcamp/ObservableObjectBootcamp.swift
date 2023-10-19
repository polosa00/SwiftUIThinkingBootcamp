//
//  ObservableObjectBootcamp.swift
//  SwiftUIThinkingBootcamp
//
//  Created by Александр Полочанин on 19.10.23.
//

import SwiftUI


struct FruitModel: Identifiable {
    let id: String = UUID().uuidString
    let name: String
    let count: Int
}

class FruitViewModel: ObservableObject {
    
    @Published var fruits: [FruitModel] = []
    @Published var isLoading: Bool = false
    
    init() {
        fetchData()
    }
    
    
    func fetchData() {
        let fruitOne = FruitModel(name: "orange", count: 4)
        let fruitTwo = FruitModel(name: "banana", count: 5)
        
        isLoading = true
        DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
            self.fruits.append(fruitOne)
            self.fruits.append(fruitTwo)
            self.isLoading = false
        }
    }
    
    func delete(indexSet: IndexSet) {
        fruits.remove(atOffsets: indexSet)
    }
    
}


struct ObservableObjectBootcamp: View {
    
    @StateObject var fruitViewModel: FruitViewModel = FruitViewModel()
    var body: some View {
        NavigationStack {
            List {
                
                if fruitViewModel.isLoading {
                    ProgressView()
                        .tint(.indigo)
                } else {
                    Section {
                        ForEach(fruitViewModel.fruits) { fruit in
                            HStack {
                                Image(systemName: "photo.circle")
                                    .resizable()
                                    .frame(width: 45, height: 45)
                                    .foregroundColor(.purple)
                                Text("\(fruit.count)")
                                    .foregroundColor(.red)
                                Text(fruit.name)
                                    .font(.headline)
                            }
                        }
                        .onDelete(perform: fruitViewModel.delete)
                    } header: {
                        HStack {
                            Image(systemName: "face.smiling")
                                .resizable()
                                .frame(width: 50, height: 50)
                            Text("Fruits")
                                .font(.headline)
                        }
                        .foregroundColor(.orange)
                    }
                    
                    .frame(height: 50)
                }
            }
            
            .navigationTitle("Fruits")
            .navigationBarItems(trailing:
                                    NavigationLink(destination: {
                TestingView( fruitViewModel: fruitViewModel)
            }, label: {
                Image(systemName: "arrowshape.forward.fill")
                    .foregroundColor(.indigo)
            })
            )
        }
    }
}


struct TestingView: View {
    @Environment(\.dismiss) var dismiss
    
    @ObservedObject var fruitViewModel: FruitViewModel
    
    var body: some View {
        ZStack {
            Color.indigo.ignoresSafeArea()
            
            VStack(spacing: 40) {
                
                VStack(spacing: 20) {
                    ForEach(fruitViewModel.fruits) { fruit in
                        Text(fruit.name)
                            .bold()
                            .foregroundColor(.white)
                    
                }
                    

                }
                .listStyle(DefaultListStyle())
                
                Button {
                    dismiss.callAsFunction()
                } label: {
                    Text("GO BACK")
                        .font(.largeTitle)
                        .bold()
                        .foregroundColor(.white)
                }
                
                Spacer()

            }
        }
        .tint(.indigo)
    }
}

struct ObservableObjectBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ObservableObjectBootcamp()
    }
}
