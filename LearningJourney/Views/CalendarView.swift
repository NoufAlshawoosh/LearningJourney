//
//  HomePage.swift
//  LearningJourney
//
//  Created by Nouf Alshawoosh on 21/10/2025.
//

import SwiftUI

struct CalendarView : View {
    @State private var selectedDates: Set<DateComponents> = []
    @State private var startDate = Date()
    @State private var endDate = Date()
    @State private var date = Date()

    var body: some View {
        
        
        
        var bounds: Range<Date> {
            return startDate..<endDate
        }
        
            VStack {
                Text("Selected Dates: \(selectedDates.count)")
                    .font(.title)
                
                Spacer()
                
                DatePicker("Start Date", selection: $startDate, displayedComponents: [.date])
                
                DatePicker("End Date", selection: $endDate, displayedComponents: [.date])
                
                Spacer()
                
                MultiDatePicker("Select Dates", selection: $selectedDates)
                    .frame(height: 300)
                
                Spacer()
                
                
                
                
            }
            .padding()
        
        
        
    }
}

#Preview {
    CalendarView()
}

