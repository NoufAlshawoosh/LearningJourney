//
//  ChangeLearningGoalPage.swift
//  LearningJourney
//
//  Created by Nouf Alshawoosh on 26/10/2025.
//

import SwiftUI

struct ChangeLearningGoalPage : View {
    enum goalDuration{
        case Week, Month, Year
    }
    
    @State private var selectedGoal:goalDuration?
    
    @State private var userGoal:String = ""
    
    var body: some View {
        
        VStack {
            
            Spacer().frame(height: 64)
            
            HStack {
                Button(action: {}){
                    Image(systemName: "chevron.left")
                        .foregroundStyle(.white)
                        .font(.system(size: 17))
                        .fontWeight(.medium)
                        .frame(width: 44, height: 44)
                        .background(Color(red: 26/255, green: 26/255, blue: 26/255))
                        .clipShape(Circle())
                        .glassEffect(.clear.tint(.white.opacity(0.3)))
                }
                
                Spacer().frame(width: 82)
                
                Text("Learning Goal")
                    .font(.system(size: 17))
                    .fontWeight(.semibold)
            }.frame(maxWidth: .infinity, maxHeight: 54, alignment: .leading)
                .padding(.horizontal, 16)
            // end of HStack
            
            
            Spacer().frame(height: 51)
            
            Text("I want to learn")
                .font(.system(size: 22))
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.horizontal, 17)
            
            Spacer().frame(height: 4)
            
            TextField("Swift", text: $userGoal)
                .font(.system(size: 17))
                .accentColor(.orange)
                .frame(maxWidth: .infinity, maxHeight: 48)
                .padding(.horizontal, 16)
                .padding(.vertical, 14)
            
            Divider().fontWeight(.bold).frame(width: 361, height: 1)
            
            Spacer().frame(height: 24)
            
            Text("I want to learn it in a ")
                .font(.system(size: 22))
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.horizontal, 17)
            
            Spacer().frame(height: 12)
            
            HStack(spacing: 8){
                // first button----------
                Button(action: {
                    selectedGoal = selectedGoal == .Week ? nil : .Week
                }){
                    Text("Week").frame(width: 97, height: 48).fontWeight(.bold)
                }
                .buttonStyle(.glass(.regular.tint(selectedGoal == .Week ? Color(red: 178/255, green: 69/255, blue: 0/255) : .clear)))
                .glassEffect(.regular.tint(.black))
                .shadow(color: .white, radius: -0.2, x: 0.2, y: 0.2)
                
                // second button---------
                Button(action: {
                    selectedGoal = selectedGoal == .Month ? nil : .Month
                    
                }){
                    Text("Month").frame(width: 97, height: 48).fontWeight(.bold)
                    
                }
                .buttonStyle(.glass(.regular.tint(selectedGoal == .Month ? Color(red: 178/255, green: 69/255, blue: 0/255) : .clear)))
                .glassEffect(.regular.tint(.black))
                .shadow(color: .white, radius: -0.2, x: 0.2, y: 0.2)
                
                // third button----------
                Button(action: {
                    selectedGoal = selectedGoal == .Year ? nil : .Year
                    
                }){
                    Text("Year").frame(width: 97, height: 48).fontWeight(.bold)
                    
                }
                .buttonStyle(.glass(.regular.tint(selectedGoal == .Year ? Color(red: 178/255, green: 69/255, blue: 0/255) : .clear)))
                .glassEffect(.regular.tint(.black))
                .shadow(color: .white, radius: -0.2, x: 0.2, y: 0.2)
                
            }.frame(maxWidth: .infinity, alignment: .leading)
                .padding(.horizontal, 17)
            // end of HStack
            
            Spacer().frame(height: 514)
            
        } // end of VStack
        
    }
}


#Preview {
    ChangeLearningGoalPage()
}
