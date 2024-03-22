//
//  TripsView.swift
//  GoTour
//
//
//

import SwiftUI


struct TripView: View {
    
    
    init() {
        
        let newNavigation = UINavigationBarAppearance()
        newNavigation.backgroundColor = .gray
        newNavigation.largeTitleTextAttributes = [.foregroundColor : UIColor.white]
        UINavigationBar.appearance().scrollEdgeAppearance = newNavigation
        UINavigationBar.appearance().standardAppearance = newNavigation
        UINavigationBar.appearance().compactAppearance = newNavigation
        
    }
    
    
    @State private var selectedTab: String = "Upcoming"
    let scrollTabs = ["Upcoming", "Completed", "Cancelled"]
    @StateObject var selectedUser = SelectedUser()
    
    let users = User.users
    
    var body: some View {
        
        NavigationView {
            
            VStack {
                
                VStack {
                    
                    HStack(spacing: 10) {
                        
                        ForEach(scrollTabs, id: \.self) { tab in
                            
                            TripleTabButtonsView(title: tab, selectedTab: $selectedTab)
                            
                        }
                        
                    }
                    
                }.padding(.top, 10)
                
                
                VStack {
                    
                    ScrollView {
                        
                        ForEach(users[0].trip) { trip in
                            
                            if selectedTab == "Upcoming" {
                                
                                TripCardView_Refactoring(selectedTab: $selectedTab, trip: trip)
                                
                            } else if selectedTab == "Completed" && trip.completed && !trip.canceled {
                                
                                TripCardView_Refactoring(selectedTab: $selectedTab, trip: trip)
                                
                            } else if selectedTab == "Cancelled" && trip.canceled {
                                
                                TripCardView_Refactoring(selectedTab: $selectedTab, trip: trip)
                                
                            }
                            
                        }
                        
                    }
                    
                }
                
            }.navigationTitle(Text("Trips")).navigationBarTitleDisplayMode(.large)
            
        }
        
    }
    
}


struct TripView_Previews: PreviewProvider {
    
    static var previews: some View {
        
        TripView()
        
        
    }
}
