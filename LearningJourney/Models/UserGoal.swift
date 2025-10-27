//
//  UserGoal.swift
//  LearningJourney
//
//  Created by Nouf Alshawoosh on 27/10/2025.
//

import SwiftUI

enum goalDuration{
    case Week, Month, Year
}

struct UserGoal : Identifiable {
    let id = UUID()
    let goalTitle : String
    var goalDuration: goalDuration?
    var goalDurationNum : Int {
        switch goalDuration {
        case .Week:
            return 7
        case .Month:
            return 30
        case .Year:
            return 365
        case nil:
            return 0
        }
    }
    
    let startDate = Date()
    var LearnedDays : [Date]
    var FreezedDays : [Date]


    var streak : Int = 0
    var learned : Int {LearnedDays.count}
    var freezed : Int {FreezedDays.count}
    
    var allowedFreezDays: Int {
        switch goalDurationNum {
        case 7:
            return 2
        case 30:
            return 8
        case 365:
            return 96
        default:
            return 0
        }
    }
    
    var isCompleted : Bool {
        return goalDurationNum == LearnedDays.count ? true : false
    }
    
    
    
    // -----------Functions---------------
    // 1- mark learned days
    mutating func logLearnedDay() {
        let today = Calendar.current.startOfDay(for: Date())
        
        // check if it is already added
        if (!self.LearnedDays.contains(today)){
            self.LearnedDays.append(today)
        }
        
    }
    
    
    // 2- mark freeze days
    mutating func logFreezedDay() {
        let today = Calendar.current.startOfDay(for: Date())
        
        if (!self.FreezedDays.contains(today)){
            self.FreezedDays.append(today)
        }
    }
    
    
    // 3- update learning streak
    // check if the array's count is > 0 (not empty)
    // check if the array of LearnedDay has continueous dates (start from last and decrement by one while increment a counter) -> assign a value to the steak
    
    mutating func updateLearningStreak () {
        if (!self.LearnedDays.isEmpty){
            if (LearnedDays.count > 1){
                var index : Int = LearnedDays.count
                var streakCount : Int = 1
                while index > 0 {
                    if Calendar.current.date(byAdding: .day, value: -1, to: LearnedDays[index-1]) == LearnedDays[index-2] {
                        
                        streakCount += 1
                        
                    } // end of most inner if
                    
                    // if two adjacent dates are
                    else {
                        break
                    }
                    
                    index -= 1
                    
                } // end of while
                
                self.streak = streakCount
                
            } // end of inner if
            
            // if the array has one element
            else {
                self.streak = 1
            } // end of else
            
            
        } // end of outer if
        
        // if the array is empty
        else {
            self.streak = 0
        }
    }
    
    
}




