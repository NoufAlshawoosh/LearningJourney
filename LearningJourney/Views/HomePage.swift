//
//  HomePage.swift
//  LearningJourney
//
//  Created by Nouf Alshawoosh on 24/10/2025.
//

import SwiftUI

struct HomePage : View {
    var body: some View {
        
        VStack{
            
            ZStack{
                Rectangle()
                    .frame(width: 365, height: 254)
                    .border(.white.opacity(0.17))
                    .foregroundStyle(Color(red: 18/255, green: 18/255, blue: 18/255)).cornerRadius(13)
                    .shadow(color: .white, radius: 0.2)
                    .glassEffect(.regular, in: .rect)
                
                VStack{
                    
                    WeeklyCalendarView()
                    
                    Spacer().frame(height: 0)
                    
                    Divider().frame(width: 329)
                    
                    Spacer().frame(height: 12)
                    
                    Text("Learning Swift").font(.system(size: 16)).fontWeight(.semibold).frame(maxWidth: .infinity, maxHeight: 19, alignment: .leading).padding(.horizontal, 30)
                    
                    Spacer().frame(height: 12)
                    
                    HStack(){
                        
                        ZStack {
                            RoundedRectangle(cornerRadius: 34).frame(width: 160, height: 69).foregroundStyle(Color(red: 76/255, green: 49/255, blue: 26/255)).glassEffect(.clear)
                            
                            HStack{
                                Image(systemName: "flame.fill")
                                    .fontWeight(.bold)
                                    .font(.system(size: 20))
                                    .foregroundStyle(Color(red: 255/255, green: 146/255, blue: 48/255))
                                    .frame(width: 41, height: 41)

                                VStack(alignment: .leading){
                                    Text("4")
                                        .font(.system(size: 24)).fontWeight(.semibold)
                                    
                                    
                                    // MUST ADD IF STATEMENT TO CHECK IF THE VALUE IS 1 OR NOT (DAY OR DAYS)
                                    Text("Days Learned")
                                        .font(.system(size: 12))
                                    
                                    
                                }.frame(width: 78, height: 49, alignment: .leading)
                                     // end of VStack
                                
                            }.frame(maxWidth: .infinity).padding(.horizontal, 14) // end of HStack
                            
                        } // end of ZStack
                        
                        
                        Spacer().frame(width: 13)
                        
                        
                        ZStack {
                            RoundedRectangle(cornerRadius: 34).frame(width: 160, height: 69).foregroundStyle(Color(red: 28/255, green: 64/255, blue: 74/255)).glassEffect(.clear)
                            
                            HStack{
                                Image(systemName: "cube.fill")
                                    .fontWeight(.bold)
                                    .font(.system(size: 20))
                                    .foregroundStyle(Color(red: 60/255, green: 211/255, blue: 254/255))
                                    .frame(width: 41, height: 41)

                                VStack(alignment: .leading){
                                    Text("1")
                                        .font(.system(size: 24)).fontWeight(.semibold)
                                    
                                    // MUST ADD IF STATEMENT TO CHECK IF THE VALUE IS 1 OR NOT (DAY OR DAYS)
                                    Text("Day Freezed")
                                        .font(.system(size: 12))
                                    
                                    
                                }.frame(width: 78, height: 49, alignment: .leading)
                                     // end of VStack
                                
                            }.frame(maxWidth: .infinity).padding(.horizontal, 14) // end of HStack
                            
                        } // end of ZStack
                        
                        
                    }.frame(maxWidth: .infinity, maxHeight: 69, alignment: .leading).padding(.horizontal, 30) // end of HStack
                    
                }.frame(maxWidth: .infinity).padding(.bottom, 12).padding(.horizontal, 16) // end of VStack
                                              
            }// end of ZStack
            
            Button(action: {}){
                Text("Log as \n Learned")
                    .foregroundStyle(.white)
                    .font(.system(size: 36))
                    .fontWeight(.bold)
                    .frame(width: 274, height: 274)
                    .background(Color(red: 179/255, green: 70/255, blue: 0/255))
                    .clipShape(Circle())
                    .glassEffect(.clear)
            }
                
            
            
            
            
            
        } // end of VStack
        
        
    }
}


#Preview {
    HomePage()
}
