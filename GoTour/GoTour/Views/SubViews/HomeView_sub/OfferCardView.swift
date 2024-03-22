//
//  OfferCardView.swift
//  GoTour
//
//
//

import SwiftUI

struct OfferCardView: View {
    
    var offer: Offer
    
    var body: some View {
        RoundedRectangle(cornerRadius: 20)
            .overlay {
                offer.image
                    .resizable()
                    .cornerRadius(20)
                VStack {
                    Spacer()
                    HStack {
                        Text(offer.title)
                            .foregroundColor(Color.orange)
                            .font(.headline)
                            .bold()
                        
                        Spacer()
                    }
                    HStack {
                        Text(offer.description)
                            .font(.footnote)
                            .foregroundColor(Color.white)
                            .lineLimit(3)
                        Spacer()
                    }
                }
                .padding()
                .background {
                    Color.black
                        .opacity(0.2)
                        .cornerRadius(20)
                }
            }
            .frame(width: UIScreen.main.bounds.width / 2, height: UIScreen.main.bounds.height / 4)
    }
}


struct OfferCardView_Previews: PreviewProvider {
    
    static var previews: some View {
        
        OfferCardView(offer: Offer(title: "summer", description: "begining with summer", image: Images.offer3))
        
    }
    
}
