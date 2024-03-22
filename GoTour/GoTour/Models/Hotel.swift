//
//  Hotel.swift
//  GoTour
//
//  
//

import SwiftUI

struct Hotel: Identifiable {
    
    var id = UUID()
    var name: String
    var details: String
    var price: Int
    var image: Image
    var rating: Double
    var numRatings: String
    var facilities: Facility
    
    static var hotels: [Hotel] = [
        
        Hotel(name: "Aria", details: "Lorem ipsum", price: 1200, image: Images.aria, rating: 4.7, numRatings: "5.6k", facilities:
                Facility(availableRooms: 20, ac: true, generator: false, parking: true, atm: true, meal: true, snacks: false, wifi: true, hospital: true, sports: true, tv: true, balcony: true)),
        
        
        Hotel(name: "MGM", details: "Lorem ipsum", price: 1000, image: Images.mgm, rating: 4.9, numRatings: "7.2k", facilities:
                Facility(availableRooms: 32, ac: true, generator: true, parking: true, atm: true, meal: true, snacks: true, wifi: true, hospital: false, sports: false, tv: true, balcony: false)),
        
        
        Hotel(name: "grandHyatt", details: "Lorem ipsum dolor", price: 1500, image: Images.grandHyatt, rating: 4.8, numRatings: "6.6k", facilities:
                Facility(availableRooms: 10, ac: true, generator: true, parking: true, atm: false, meal: false, snacks: true, wifi: true, hospital: true, sports: true, tv: true, balcony: true)),
        
        
        Hotel(name: "Business", details: "Lorem ipsum", price: 850, image: Images.business, rating: 3.9, numRatings: "2.1k", facilities:
                Facility(availableRooms: 4, ac: false, generator: false, parking: false, atm: true, meal: true, snacks: true, wifi: true, hospital: false, sports: false, tv: true, balcony: false))
    ]
    
}
