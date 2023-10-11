//
//  DatePickerBootcamp.swift
//  SwiftUIThinkingBootcamp
//
//  Created by Александр Полочанин on 11.10.23.
//

import SwiftUI

struct DatePickerBootcamp: View {
    
    @State var selectedDate: Date = Date()
    @State var startingDate: Date = Calendar.current.date(from: DateComponents(year: 2017)) ?? Date()
    @State var endingDate: Date = Date()
    
    var dateFormatter: DateFormatter {
        let formatter = DateFormatter()
        formatter.dateStyle = .medium
        formatter.dateFormat 
        return formatter
    }
    
    
    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
            Text(dateFormatter.string(from: selectedDate))
            
            Text("1. Example")
                .font(.headline)
        
            DatePicker(selection: $selectedDate) {
                Text("Select date:")
            }
            .padding(.bottom, 30)
            
            Text("2. Example")
                .font(.headline)
            
            DatePicker(
                selection: $selectedDate,
                displayedComponents: [.date]) {
                    Text("Select date:")
                }
                .datePickerStyle(.graphical)
                .padding(.bottom, 30)
            
            Text("3. Example")
                .font(.headline)
            
            DatePicker("Select date from range: ", selection: $selectedDate, in: startingDate...endingDate)
                .padding(.bottom, 30)
        }
        .padding(.horizontal, 20)
    }
}

struct DatePickerBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        DatePickerBootcamp()
    }
}
