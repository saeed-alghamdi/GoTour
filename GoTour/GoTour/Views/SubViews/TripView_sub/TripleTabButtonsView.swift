//
//  TripTabBtn.swift
//  GoTour
//
//
//

import SwiftUI

struct TripleTabButtonsView: View {
    
    var title: String
    
    @Binding var selectedTab: String
    
    var body: some View {
        
        Button {
            
            selectedTab = title
            
        } label: {
            
            VStack {
                
                Text(title)
                    .fontWeight(.bold)
                    .foregroundColor(selectedTab == title ? Colors.white : Color.gray)
                
            }.padding().frame(height: 60)
                .background(selectedTab == title ? Color.gray : Color.white).cornerRadius(10)
            
        }
    }
}
