//
//  ActionSheetBootcamp.swift
//  SwiftUIThinkingBootcamp
//
//  Created by Александр Полочанин on 9.10.23.
//

import SwiftUI

struct ActionSheetBootcamp: View {
    
    @State var showActionSheet: Bool = false
    @State var actionSheetOption: ActionSheetOptions = .isOtherPost
    
    enum ActionSheetOptions {
        case isMyPost
        case isOtherPost
    }
    var body: some View {
        VStack {
            HStack {
                Circle()
                    .frame(width: 20, height: 20)
                Text("@username")
                Spacer()
                Button {
                    actionSheetOption = .isOtherPost
                    showActionSheet.toggle()
                } label: {
                    Image(systemName: "ellipsis")
                        .foregroundColor(.black)
                }

            }
            .padding(.horizontal, 20)
            
            Rectangle()
                .aspectRatio(1.0, contentMode: .fit)
        }
        .actionSheet(isPresented: $showActionSheet, content: getActionSheet)

        
        
    }
    
    func getActionSheet() -> ActionSheet {
        let sharedButton: ActionSheet.Button = .default(Text("Share")) {
            // add code to share post
        }
        
        let reportButton: ActionSheet.Button = .destructive(Text("Report")) {
            // add code to report this post
        }
        
        let deleteButton: ActionSheet.Button = .destructive(Text("Delete")) {
            // add code to delete this post
        }
        
        let cancelButton: ActionSheet.Button = .cancel()
        let title = Text("What would you like ti do?")
        
        switch actionSheetOption {
        case .isMyPost:
            return ActionSheet(
                title: title,
                message: nil,
                buttons: [sharedButton, reportButton, deleteButton, cancelButton])
            
        case .isOtherPost:
            return ActionSheet(
                title: title,
                message: nil,
                buttons: [sharedButton, reportButton,  cancelButton])
        }
    }
}

struct ActionSheetBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ActionSheetBootcamp()
    }
}
