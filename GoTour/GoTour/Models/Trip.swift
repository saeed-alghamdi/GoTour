//
//  Trip.swift
//  GoTour
//
//  
//

import Foundation

struct Trip: Identifiable {
    var id = UUID()
    var hotel: Hotel
    var checkIn: Date
    var checkOut: Date
    
    var canceled: Bool
    var upcoming: Bool {
        return Date.now < checkIn
    }
    var completed: Bool {
        return Date.now > checkIn
    }
}
