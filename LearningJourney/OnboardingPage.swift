//
//  ContentView.swift
//  LearningJourney
//
//  Created by Nouf Alshawoosh on 17/10/2025.
//

import SwiftUI

struct OnboardingPage: View {
    
    enum goalDuration{
        case Week, Month, Year
    }
    
    @State private var selectedGoal:goalDuration?
    
    @State private var userGoal:String = ""
    
    var body: some View {
        
        ZStack(){
            
            ScrollView {
                
                VStack() {
                    
                    Spacer().frame(height: 86)
                    
                    ZStack {
                        
                        Circle()
                            .fill(.orange) // !!!!!
                            .frame(width: 109, height: 109)
                            .zIndex(0)
                        
                        Circle()
                            .fill(Color.black.opacity(0.8))
                            .frame(width: 109, height: 109)
                            .glassEffect(.clear)
                            .zIndex(1)
                        
                        Image(systemName: "flame.fill")
                            .symbolRenderingMode(.hierarchical)
                            .resizable()
                            .scaledToFit()
                            .frame(width: 40, height: 40)
                            .foregroundStyle(.orange)
                            .zIndex(2)
                        
                    
                }.frame(width: 109, height: 109)
                
                Spacer().frame(height: 47)
                
                Text("Hello Learner")
                    .font(.largeTitle)
                    .foregroundStyle(.white)
                    .fontWeight(.bold)
                    .frame(maxWidth: .infinity,alignment: .leading)
                    .padding(.horizontal, 17)
                
                Spacer().frame(height: 4)
                
                Text("This app will help you learn everyday!")
                    .font(.body)
                    .foregroundStyle(Color(red: 153/255, green: 153/255, blue: 153/255))
                    .fontWeight(.semibold)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.horizontal, 17)
                
                Spacer().frame(height: 31)
                
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
                
                Spacer().frame(height: 223)
                
                Button(action: {}){
                    Text("Start learning").fontWeight(.bold)
                        .foregroundStyle(.white)
                    
                }.frame(width: 182, height: 48)
                    .glassEffect(.clear.tint(Color(red: 178/255, green: 69/255, blue: 0/255)))
                
                    .glassEffect(.regular.tint(.black))
                    .shadow(color: .white, radius: -1, x: 0.2, y: 0.2)
                
                
                
                Spacer().frame(height: 56)
                
                
            } // end of VStack
            
        }.scrollDisabled(true)
            .ignoresSafeArea()
        // end of ScrollView
        
        
    }// end of ZStack
    
}
}



#Preview {
    OnboardingPage()
}
