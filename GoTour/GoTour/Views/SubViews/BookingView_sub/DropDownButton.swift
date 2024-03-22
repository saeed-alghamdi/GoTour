//
//  DropDownBtn.swift
//  GoTour
//
//  
//

import SwiftUI

struct DropDownButton: View {
    
    @Binding var selecteCountry: Country 
    @Binding var phoneKey: String
    
    var country: Country
    
    var body: some View {
        
        Button {
            
            selecteCountry = country
            phoneKey = "+\(selecteCountry.phoneKey)"
            
        } label: {
            
            Text(country.flag)
                .font(.body)
            
        }
    }
}
