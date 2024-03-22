//
//  Offer.swift
//  GoTour
//
//  
//

import SwiftUI

struct Offer: Identifiable {
    
    var id = UUID()
    var title: String
    var description: String
    var image: Image
    
    static let offers: [Offer] = [
        Offer(title: "This Tile", description: "Lorem ipsum", image: Images.offer1),
        Offer(title: "That Title", description: "Lorem ipsum dolor", image: Images.offer2),
        Offer(title: "Header 001", description: "This is a longer description text", image: Images.offer3),
        Offer(title: "Header 002", description: "Lorem", image: Images.offer4)
    ]
}
