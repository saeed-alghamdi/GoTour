//
//  tripCardView.swift
//  GoTour
//
//
//

import SwiftUI


struct TripCardView_Refactoring: View {
    
    @Binding var selectedTab: String
    
    var trip: Trip
    
    var body: some View {
        
        VStack {
            
            HStack {
                
                trip.hotel.image
                    .resizable()
                    .aspectRatio(contentMode: .fill).cornerRadius(20, corners: [.topLeft, .topRight])
                
                
                Spacer()
                
                VStack(spacing: 10) {
                    
                    HStack {
                        
                        Text("\(trip.hotel.name) Hotel")
                            .font(.headline)
                            .foregroundColor(Color.primary)
                            .bold()
                        Spacer()
                    }
                    
                    HStack(spacing: 20) {
                        
                        VStack {
                            
                            Text("Check-in")
                                .font(.footnote)
                                .foregroundColor(Color.green)
                            
                            Text(trip.checkIn, style: .date)
                                .font(.footnote)
                                .foregroundColor(Color(uiColor: UIColor.systemGray))
                        }
                        
                        
                        VStack {
                            Text("Check-out")
                                .font(.footnote)
                                .foregroundColor(Color.red)
                            
                            Text(trip.checkOut, style: .date)
                                .font(.footnote)
                                .foregroundColor(Color(uiColor: UIColor.systemGray))
                        }
                    }
                    
                    HStack {
                        
                        if selectedTab == "Upcoming" {
                            
                            Button {
                                
                                // ...
                                
                            } label: {
                                
                                
                                Label("Direction", systemImage: "mappin.and.ellipse").font(.headline).frame(height: 5).foregroundColor(.white).padding().background(
                                
                                    RoundedRectangle(cornerRadius: 10).fill(Color.mint)
                                
                                
                                )
                                    
                                  
                            }
                            
                            
                        } else if selectedTab == "Completed" {
                            
                            
                            NavigationLink {
                                
                                ReviewView().navigationBarBackButtonHidden(true)
                                
                            } label: {
                                
                                Label("Review", systemImage: "square.and.pencil").frame(width: 105, height: 5).foregroundColor(Color.white)
                                    .font(.body)
                                    .padding()
                                    .background(
                                        RoundedCorner(radius: 10, corners: .allCorners)
                                            .foregroundColor(Color.blue)
                                    )
                                
                                
                            }

                        }
                        
                    }
                    
                }
                
            }.padding()
            
        }
        
    }
    
}


