//
//  User.swift
//  GoTour
//
//  
//

import SwiftUI

struct User: Identifiable {
    var id: Int
    var name: String
    var password: String
    var email: String
    var image: Image
    var trip: [Trip]
    
    static func dateFromString(yyyy_MM_dd date: String) -> Date {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "yyyy-MM-dd"
        
        return dateFormatter.date(from: date)!
    }
    
    static var users: [User] = [
        User(id: 1, name: "John", password: "J123", email: "j@example.com", image: Image(systemName: "figure.archery"), trip: [
            Trip(hotel: Hotel.hotels[0], checkIn: dateFromString(yyyy_MM_dd: "2022-01-12"), checkOut: dateFromString(yyyy_MM_dd: "2022-01-15"), canceled: false),
            Trip(hotel: Hotel.hotels[2], checkIn: dateFromString(yyyy_MM_dd: "2022-02-01"), checkOut: dateFromString(yyyy_MM_dd: "2022-02-10"), canceled: false),
            Trip(hotel: Hotel.hotels[0], checkIn: dateFromString(yyyy_MM_dd: "2022-04-09"), checkOut: dateFromString(yyyy_MM_dd: "2022-05-01"), canceled: true),
            Trip(hotel: Hotel.hotels[1], checkIn: dateFromString(yyyy_MM_dd: "2022-08-01"), checkOut: dateFromString(yyyy_MM_dd: "2022-09-10"), canceled: false),
            Trip(hotel: Hotel.hotels[1], checkIn: dateFromString(yyyy_MM_dd: "2022-08-01"), checkOut: dateFromString(yyyy_MM_dd: "2022-09-08"), canceled: true),
            Trip(hotel: Hotel.hotels[2], checkIn: dateFromString(yyyy_MM_dd: "2022-09-01"), checkOut: dateFromString(yyyy_MM_dd: "2022-10-10"), canceled: false),
            Trip(hotel: Hotel.hotels[0], checkIn: dateFromString(yyyy_MM_dd: "2022-11-01"), checkOut: dateFromString(yyyy_MM_dd: "2022-11-10"), canceled: false),
            Trip(hotel: Hotel.hotels[2], checkIn: dateFromString(yyyy_MM_dd: "2022-12-01"), checkOut: dateFromString(yyyy_MM_dd: "2022-12-10"), canceled: false),
            Trip(hotel: Hotel.hotels[3], checkIn: dateFromString(yyyy_MM_dd: "2023-02-01"), checkOut: dateFromString(yyyy_MM_dd: "2023-02-10"), canceled: true),
            Trip(hotel: Hotel.hotels[3], checkIn: dateFromString(yyyy_MM_dd: "2023-04-01"), checkOut: dateFromString(yyyy_MM_dd: "2023-04-03"), canceled: false)
        ]),
        User(id: 2, name: "Jack", password: "J123", email: "jack@example.com", image: Image(systemName: "figure.skiing.downhill"), trip: [
            Trip(hotel: Hotel.hotels[0], checkIn: dateFromString(yyyy_MM_dd: "2022-01-01"), checkOut: dateFromString(yyyy_MM_dd: "2022-01-02"), canceled: false),
            Trip(hotel: Hotel.hotels[2], checkIn: dateFromString(yyyy_MM_dd: "2022-02-01"), checkOut: dateFromString(yyyy_MM_dd: "2022-02-02"), canceled: false),
            Trip(hotel: Hotel.hotels[0], checkIn: dateFromString(yyyy_MM_dd: "2023-04-01"), checkOut: dateFromString(yyyy_MM_dd: "2023-05-01"), canceled: false),
            Trip(hotel: Hotel.hotels[1], checkIn: dateFromString(yyyy_MM_dd: "2023-06-01"), checkOut: dateFromString(yyyy_MM_dd: "2023-06-10"), canceled: false)
        ]),
        User(id: 3, name: "Jane", password: "J123", email: "jnn@example.com", image: Image(systemName: "figure.volleyball"), trip: [
            Trip(hotel: Hotel.hotels[0], checkIn: dateFromString(yyyy_MM_dd: "2023-01-21"), checkOut: dateFromString(yyyy_MM_dd: "2023-01-22"), canceled: false),
            Trip(hotel: Hotel.hotels[2], checkIn: dateFromString(yyyy_MM_dd: "2023-02-11"), checkOut: dateFromString(yyyy_MM_dd: "2023-02-22"), canceled: false),
            Trip(hotel: Hotel.hotels[0], checkIn: dateFromString(yyyy_MM_dd: "2023-04-14"), checkOut: dateFromString(yyyy_MM_dd: "2023-05-21"), canceled: false),
            Trip(hotel: Hotel.hotels[1], checkIn: dateFromString(yyyy_MM_dd: "2023-06-30"), checkOut: dateFromString(yyyy_MM_dd: "2023-07-10"), canceled: true)
        ])
    ] 
}
