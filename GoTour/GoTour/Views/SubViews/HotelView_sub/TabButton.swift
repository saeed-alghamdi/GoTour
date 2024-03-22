//
//  TabButton.swift
//  GoTour
//
//  
//

import SwiftUI

struct TabButton: View {
    
    var title: String
    
    @Binding var selectedTab: String
    
    var body: some View {
        
        Button {
            
            withAnimation(.easeOut(duration: 0.15)) {
                
                selectedTab = title
                
            }
            
        } label: {
            
            VStack(alignment: .leading, spacing: 6) {
                Text(title)
                    .fontWeight(.bold)
                    .padding(.top)
                    .padding(.horizontal, 5)
                    .foregroundColor(selectedTab == title ? Color.gray : Color.primary)
            }
            
        }
    }
}
