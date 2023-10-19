//
//  EnvironmentObjectBootcamp.swift
//  SwiftUIThinkingBootcamp
//
//  Created by Александр Полочанин on 19.10.23.
//

import SwiftUI


class EnvironmentViewModel: ObservableObject {
    @Published var devices: [String] = []

    
    init() {
        getData()
    }
    
    func getData() {
        devices.append(contentsOf: ["iPhone", "iMac", "iWatch", "MacBook"])
    }
    
    func deleteItem(index: IndexSet) {
        devices.remove(atOffsets: index)
    }
}

struct EnvironmentObjectBootcamp: View {
    
    @StateObject var viewModel = EnvironmentViewModel()
    
    var body: some View {
        
        NavigationStack {
            List {
                ForEach(viewModel.devices, id: \.self) { item in
                    NavigationLink {
                        ScreenForItem(titleForButton: item)
                    } label: {
                        Text(item)
                    }
                }
                .onDelete(perform: viewModel.deleteItem)
            }
            .navigationTitle("Devices")
            
            
        }
        .tint(.orange)
        .environmentObject(viewModel)
    }
}

struct ScreenForItem: View {
    
    let titleForButton: String
    
    var body: some View {
        ZStack {
            Color.indigo.ignoresSafeArea()
            
            
            NavigationLink {
                ThirdItemScreen()
            } label: {
                Text(titleForButton)
                    .font(.title2)
                    .bold()
                    .frame(width: 200, height: 50)
                    .background(.white)
                    .foregroundColor(.indigo)
                    .cornerRadius(25)
            }

        


            
        }
        .navigationTitle("Item")
    }
}


struct ThirdItemScreen: View {
    
    @EnvironmentObject var viewModel: EnvironmentViewModel
    
    var body: some View {
        ZStack {
            Color.green.ignoresSafeArea()
            VStack {
                ForEach(viewModel.devices, id: \.self) { item in
                    Text(item)
                }
            }
            
        }
        .navigationTitle("Devices again")
    }
}

struct EnvironmentObjectBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        EnvironmentObjectBootcamp()
//        ScreenForItem()
    }
}
