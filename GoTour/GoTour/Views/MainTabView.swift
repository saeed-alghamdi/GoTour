//
//  MainTabView.swift
//  GoTour
//
//  
//

import SwiftUI
import UIKit


struct MainTabView: View {
    
    
    init() {
        
        UITabBar.appearance().backgroundColor = UIColor.systemBackground
        
        
    }
    
    var body: some View {
        
        TabView {
            
            HomeView()
                .tabItem {
                    Image(systemName: "house")
                    Text("Home")
                }
            
            TripView()
                .tabItem {
                    Image(systemName: "suitcase")
                    Text("Trip")
                }
            OfferView()
                .tabItem {
                    Image(systemName: "seal")
                    Text("Offers")
                }
            ProfileView()
                .tabItem {
                    Image(systemName: "person")
                    Text("Profile")
                }
            
            
        }
        
    }
    
}

struct MainTabView_Previews: PreviewProvider {
    static var previews: some View {
        MainTabView()
    }
}
