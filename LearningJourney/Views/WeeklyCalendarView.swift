//
//  WeeklyCalendarView.swift
//  LearningJourney
//
//  Created by Nouf Alshawoosh on 21/10/2025.
//

import SwiftUI

struct WeeklyCalendarView : View {
    
    @State var date = Date()
    
    var body: some View {
        
        ZStack{
            VStack{
                HStack{
                    HStack {
                        Text(getMonthYearName(date: date))
                            .fontWeight(.semibold)
                            .font(.system(size: 17))
                        
                        
                        Button(action: {
                            
                        }){
                            Image(systemName: "chevron.right")
                                .font(.system(size: 13))
                                .fontWeight(.bold)
                                .foregroundStyle(.orange)
                        }
                    }.frame(maxWidth: .infinity, maxHeight: 24, alignment: .leading)
                        // end of HStack
                    
                    
                    HStack {
                        Button(action: {
                            date = Calendar.current.date(byAdding: .day, value: -7, to: date)!
                        }){
                            Image(systemName: "chevron.left")
                                .font(.system(size: 20))
                                .fontWeight(.medium)
                                .foregroundStyle(.orange)
                        }
                        
                        
                        Spacer().frame(width: 28)
                        
                        Button(action: {
                            date = Calendar.current.date(byAdding: .day, value: 7, to: date)!
                        }){
                            Image(systemName: "chevron.right")
                                .font(.system(size: 20))
                                .fontWeight(.medium)
                                .foregroundStyle(.orange)
                        }
                    }.frame(maxWidth: .infinity, maxHeight: 24, alignment: .trailing)
                        // end of HStack
                    
                    
                }.frame(maxWidth: .infinity, maxHeight: 40, alignment: .leading)
                    .padding(.horizontal, 30)
                    //.border(.white, width: 2)
                // end of HStack
                
                Spacer().frame(height: 18)
                
                HStack(spacing: 17){
                    ForEach(Calendar.current.shortWeekdaySymbols, id: \.self){
                        day in Text(day.uppercased())
                            .font(.system(size: 13))
                            .fontWeight(.semibold)
                            .foregroundStyle(.gray)
                            .foregroundStyle(Color(red: 64/255, green: 64/255, blue: 64/255))
                            .frame(width: 32, height: 18)
                            
                    }
                }.frame(maxWidth: .infinity, maxHeight: 18, alignment: .center)
                    .padding(.horizontal, 30)
                    //.border(.white, width: 2)
                
                Spacer().frame(height: 4)
                
                HStack(spacing: 5){
                    ForEach(getWeekDays(date: date), id: \.self){
                        day in
                        
                        ZStack {
                            
                            Rectangle()
//                                .foregroundStyle(Color(red: 255/255, green: 146/255, blue: 48/255).opacity(0.24))
                                .foregroundStyle(.clear)
                                .cornerRadius(22)
                                .frame(width: 44, height: 44)
                            
                            Text(day)
//                                .foregroundStyle(Color(red: 255/255, green: 146/255, blue: 48/255))
                                .font(.system(size: 20))
                                .fontWeight(.medium)
                            
                        } // end of ZStack
                    } // end of ForEach
                    
                    
                }.frame(maxWidth: .infinity, maxHeight: 44)
                 .padding(.horizontal, 30)
                    // end of HStack
                
                
            } // end of VStack
            
            
            
            
        } //end of ZStack
        
        
    }
}



// -------------Functions-----------------

func getMonthYearName(date: Date) -> String {
    let formatter = DateFormatter()
    formatter.dateFormat = "LLLL YYYY"
    formatter.locale = Locale(identifier: "en_US")
    
    return formatter.string(from: date)

}

// ---------------------------------------

func getFirstDayOfWeek(date: Date) -> String {
    
    //let date: Date = Calendar.current.date(byAdding: .day, value: 0, to: Date())!
    
    // WeekOYear & YearForWeekOfYear
    let components = Calendar.current.dateComponents([.weekOfYear, .yearForWeekOfYear], from: date)
    
    // find the first date of the week based on WeekOYear & YearForWeekOfYear
    let firstDayDate = Calendar.current.date(from: components)
    
    // extract the day from the date
    let firstDay = Calendar.current.component(.day, from: firstDayDate!)
    
    
    
    return String(firstDay)
}

// ---------------------------------------

func getWeekDays(date: Date) -> [String]{
    
    var date = date // why we cannot ommit this?
    var weekDays: [String] = []
    
    weekDays.append(String(Calendar.current.component(.day, from: date)))
    
    for i in 0...5 {
        
        date = Calendar.current.date(byAdding: .day, value: 1, to: date)!
        
        weekDays.append(String(Calendar.current.component(.day, from: date)))
        
        
    }

    return weekDays
    
}




#Preview {
    WeeklyCalendarView()
}
