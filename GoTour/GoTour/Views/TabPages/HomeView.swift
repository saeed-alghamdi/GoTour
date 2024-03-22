//
//  HomeView.swift
//  GoTour
//
//
//

import SwiftUI



struct HomeView: View {
    
    @StateObject var selectedUser = SelectedUser()
    
    @State var showingDetailsSheet: Bool = false
    
    
    @State var hotelInfo = Hotel(name: "", details: "", price: 0, image: Image(""), rating: 0.0, numRatings: "", facilities: Facility(availableRooms: 0, ac: false, generator: false, parking: false, atm: false, meal: false, snacks: false, wifi: false, hospital: false, sports: false, tv: false, balcony: false))
    
    
    let hotels = Hotel.hotels
    
    let offers = Offer.offers
    
    var body: some View {
        
        VStack(spacing: 0) {
            
            ZStack {
                
                Images.explore
                    .resizable()
                    .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height / 2.5).overlay {
                        
                        Color.black.opacity(0.2)
                        
                    }
                
                Text("Let's Explore\nThe World!")
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                    .foregroundColor(Colors.white)
                    .multilineTextAlignment(.leading).padding(.trailing, UIScreen.main.bounds.maxX / 3)
                
                
            }.edgesIgnoringSafeArea(.top)
            
            
            ScrollView {
                
                HStack(spacing: 40) {
                    
                    Button {
                        // ...
                    } label: {
                        
                        VStack {
                            Image(systemName: "case.fill")
                                .font(.body)
                                .foregroundColor(Color.blue)
                                .padding(10).background(Circle().foregroundColor(Colors.palePurple))
                            
                            Text("Trips")
                                .foregroundColor(Color.gray)
                                .font(.body)
                        }
                        
                    }

                    Button {
                        // ...
                    } label: {
                        
                        VStack {
                            Image(systemName: "house.fill")
                                .font(.body)
                                .foregroundColor(Color.pink)
                                .padding(10).background(Circle().foregroundColor(Colors.palePurple))
                            
                            
                            Text("Hotels")
                                .foregroundColor(Color.gray)
                                .font(.body)
                        }
                        
                    }

                    Button {
                        // ...
                    } label: {
                        
                        VStack {
                            Image(systemName: "airplane")
                                .font(.body)
                                .foregroundColor(Color.orange)
                                .padding(10)
                            
                                .background(Circle().foregroundColor(Colors.palePurple))
                            
                            Text("Flights")
                                .foregroundColor(Color.gray)
                                .font(.body)
                        }
                        
                    }

                    Button {
                        // ...
                    } label: {
                        
                        VStack {
                            
                            Image(systemName: "staroflife.fill")
                                .font(.body)
                                .foregroundColor(Color.purple)
                                .padding(10).background(Circle().foregroundColor(Colors.palePurple))
                            
                            Text("Offers")
                                .foregroundColor(Color.gray)
                                .font(.body)
                        }
                        
                    }

                }
                
                VStack {
                    
                    HStack {
                        Text("Popular Offer")
                            .font(.title3)
                            .bold()
                            .foregroundColor(Color.primary)
                        Spacer()
                    }//.padding(.leading, -UIScreen.main.bounds.midX + 20)
                   
                    
                    ScrollView(.horizontal, showsIndicators: false) {
                        
                        HStack {
                            ForEach(offers) { offer in
                                OfferCardView(offer: offer)
                            }
                        }
                        
                    }
                    
                    HStack {
                        Text("Hotel Near You")
                            .font(.title3)
                            .bold()
                            .foregroundColor(Color.primary)
                        Spacer()
                    }
                    .padding(.top)
                    
                    ScrollView(.horizontal, showsIndicators: false) {
                        HStack {
                            
                            ForEach(0..<hotels.count, id: \.self) { index in
                                
                                
                                Button {
                                    
                                    hotelInfo.name = hotels[index].name
                                    hotelInfo.details = hotels[index].details
                                    hotelInfo.price = hotels[index].price
                                    hotelInfo.image = hotels[index].image
                                    hotelInfo.rating = hotels[index].rating
                                    hotelInfo.numRatings = hotels[index].numRatings
                                    hotelInfo.facilities = hotels[index].facilities
                                    
                                    showingDetailsSheet = true
                                    
                                    
                                } label: {
                                    
                                    
                                    HotelCardView(hotel: hotels[index])
                                    
                                    
                                }.fullScreenCover(isPresented: $showingDetailsSheet) {
                                    
                                    HotelView(hotel: $hotelInfo)
                                    
                                }
                                
                            }
                            
                        }
                        
                    }
                    
                }.padding()
                
            }
            
        }
        
    }
    
}


struct HomeView_PreviewProvider: PreviewProvider {
    
    static var previews: some View {
        
        HomeView()
        
    }
    
}
