//
//  HotelCardView.swift
//  GoTour
//
//
//

import SwiftUI

struct HotelCardView: View {
    
    var hotel: Hotel
    
    var body: some View {
        ZStack {
            
            VStack {
                Rectangle()
                    .overlay {
                        hotel.image
                            .resizable()
                    }
                    .frame(width: UIScreen.main.bounds.width/2, height: UIScreen.main.bounds.height/6)
                
                HStack {
                    Text(hotel.name)
                        .foregroundColor(Color.primary)
                        .font(.subheadline)
                        .bold()
                    Spacer()
                }
                .padding(.leading, 5)
                
                HStack(spacing: 0) {
                    ForEach(1..<5) { _ in
                        //Text("⭐️")
                            //.font(.caption)
                        Image(systemName: "star.fill").font(.footnote).foregroundColor(.yellow)
                    }
                    Spacer()
                    
                    Text("$\(hotel.price)")
                        .foregroundColor(Color.cyan)
                        .font(.caption)
                        .bold()
                    
                    Text("/night")
                        .foregroundColor(Color.primary)
                        .font(.caption)
                        .bold()
                }
                .padding(5)
                
                Spacer()
                
            }
        }
        .frame(width: UIScreen.main.bounds.width/2, height: UIScreen.main.bounds.height/3)
        .cornerRadius(20)
    }
}



struct HotelCardView_PreviewProvider: PreviewProvider {
    
    static var previews: some View {
        
        HotelCardView(hotel: Hotel(name: "Holo", details: "Lorem ipsum", price: 1200, image: Images.aria, rating: 4.7, numRatings: "5.6k", facilities:
                                    Facility(availableRooms: 20, ac: true, generator: false, parking: true, atm: true, meal: true, snacks: false, wifi: true, hospital: true, sports: true, tv: true, balcony: true)))
        
    }
    
}
