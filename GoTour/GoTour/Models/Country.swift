//
//  Countries.swift
//  GoTour
//
//  
//

import Foundation

struct Country: Identifiable {
    
    var id = UUID()
    var flag: String
    var phoneKey: String
    
    static var countries: [Country] = [
        Country(flag: "🚫", phoneKey: "None"),
        Country(flag: "🇸🇦", phoneKey: "966"),
        Country(flag: "🇿🇦", phoneKey: "302"),
        Country(flag: "🇧🇷", phoneKey: "201")
    ]
}
