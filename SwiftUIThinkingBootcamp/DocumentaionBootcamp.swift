//
//  DocumentaionBootcamp.swift
//  SwiftUIThinkingBootcamp
//
//  Created by Александр Полочанин on 17.10.23.
//

import SwiftUI

struct DocumentaionBootcamp: View {
    
    // MARK: PROPERTIES
    @State var showAlert: Bool = false
    
    let names = [
        "Alex", "Ann", "Pavel", "Eugen"
    ]
    
    // MARK: BODY
    
    //Alex - work with:
    /*
     1. Title for Alert
     2. Alert View
     */
    var body: some View {
        NavigationStack { // START: NAV
            ZStack {
                //background
                Color.indigo.ignoresSafeArea()
                //foreground
                foregroundLayer
            }
            .navigationTitle("Documentation")
            .navigationBarItems(
                trailing: Button("ALERT", action: {
                    showAlert.toggle()
                })
            )
            .tint(.orange)
            .alert(isPresented: $showAlert) {
                getAlert(text: "This is ALERT!")
            }
            
        } // END: NAV
        
    }
    ///This is foreground layer
    var foregroundLayer: some View {
        ScrollView {
            ForEach(names, id: \.self) { name in
                Text(name)
                    .foregroundColor(.white)
                    .font(.headline)
            }
        }
        
    }
    
    
    
    // MARK: FUNCTIONS
    
    ///Gets alert with a specified title
    ///
    ///
    ///This is function creates an returns an alert immediately. The alert will have a title based on the text parametr but it will NOT have a message
    ///
    ///```
    ///getAlert(text: "Hi") -> Alert(text: "Hi")
    ///```
    ///
    /// - Warning: There is no additional message for the alert
    /// - Parameter text: This is title for ALERT
    /// - Returns: Return ALERT with only title
    ///
    ///
    ///
    func getAlert(text: String) -> Alert {
        Alert(title: Text(text))
    }
}


//MARK: PREVIEW
struct DocumentaionBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        DocumentaionBootcamp()
    }
}
