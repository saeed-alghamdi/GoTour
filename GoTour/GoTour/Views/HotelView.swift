//
//  HotelView_Refactoring.swift
//  GoTour
//
//
//

import SwiftUI


struct HotelView: View {
    
    
    init(hotel: Binding<Hotel>) {
        
        
        /*UINavigationBar.appearance().barTintColor = .purple
        UINavigationBar.appearance().tintColor = .orange
        UINavigationBar.appearance().backgroundColor = .brown
        UINavigationBar.appearance().isTranslucent = false*/
        
        /*let newNavigation = UINavigationBarAppearance()
        newNavigation.backgroundColor = .brown
        newNavigation.titleTextAttributes = [.foregroundColor : UIColor.white]
        UINavigationBar.appearance().scrollEdgeAppearance = newNavigation*/
        
        /*UINavigationBar.appearance().backgroundColor = UIColor(red: 0.2, green: 0.5, blue: 0.8, alpha: 1)
        UINavigationBar.appearance().largeTitleTextAttributes = [.foregroundColor: UIColor.white]
        UINavigationBar.appearance().titleTextAttributes = [.foregroundColor: UIColor.white]*/
        
        
        /*
         
         if #available(iOS 15, *) {
             // MARK: Navigation bar appearance
             let navigationBarAppearance = UINavigationBarAppearance()
             navigationBarAppearance.configureWithOpaqueBackground()
             navigationBarAppearance.titleTextAttributes = [
                 NSAttributedString.Key.foregroundColor : UIColor.white
             ]
             navigationBarAppearance.backgroundColor = UIColor.blue
             UINavigationBar.appearance().standardAppearance = navigationBarAppearance
             UINavigationBar.appearance().compactAppearance = navigationBarAppearance
             UINavigationBar.appearance().scrollEdgeAppearance = navigationBarAppearance
             
             // MARK: Tab bar appearance
             let tabBarAppearance = UITabBarAppearance()
             tabBarAppearance.configureWithOpaqueBackground()
             tabBarAppearance.backgroundColor = UIColor.blue
             UITabBar.appearance().scrollEdgeAppearance = tabBarAppearance
             UITabBar.appearance().standardAppearance = tabBarAppearance
         }
         
         
         */
        
        
        
        let newNavigation = UINavigationBarAppearance()
        newNavigation.backgroundColor = .gray
        newNavigation.titleTextAttributes = [.foregroundColor : UIColor.white]
        
        UINavigationBar.appearance().scrollEdgeAppearance = newNavigation
        UINavigationBar.appearance().standardAppearance = newNavigation
        UINavigationBar.appearance().compactAppearance = newNavigation
        
        self._hotel = hotel
        
        
    }
    
   
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    
    @State private var selectedTab: String = "Details"
    
    
    @Binding var hotel: Hotel
    
    
    var body: some View {
        
        
        NavigationView {
            
            VStack {
                
                
                hotel.image.resizable()
                    .clipShape(RoundedRectangle(cornerRadius: 10))
                    .frame(height: UIScreen.main.bounds.height/4)
                    .padding([.horizontal, .top], 20)
               
                Text(hotel.name)
                
                HStack(spacing: 5) {
                    
                    TabButton(title: "Details", selectedTab: $selectedTab)
                    
                    TabButton(title: "Facilities", selectedTab: $selectedTab)
                    
                    TabButton(title: "Reviews", selectedTab: $selectedTab)
                    
                    TabButton(title: "Directions", selectedTab: $selectedTab)
                    
                }
                
                if selectedTab == "Details" {
                    Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. ")
                        .foregroundColor(Color.primary)
                        .font(.body)
                        .padding([.leading, .trailing, .top], 25)
                } else if selectedTab == "Facilities" {
                    
                    let data = (1...12).map { "Item \($0)" }
                    
                    ScrollView(.vertical, showsIndicators: false) {
                        
                        LazyVGrid(columns: Array(repeating: GridItem(.flexible(), spacing: 5), count: 4), spacing: 15) {
                            
                            ForEach(data, id: \.self) { item in
                                
                                
                                Circle().frame(width: 50, height: 50).foregroundColor(.white).overlay {
                                    
                                    Image(systemName: "house.circle.fill").resizable().aspectRatio(contentMode: .fit).foregroundColor(Color(uiColor: UIColor.systemGray))
                                    
                                }
                                
                                /*Circle().fill(.orange).frame(width: 50, height: 50)
                                    .foregroundColor(Color.purple)
                                    .overlay {
                                        Image(systemName: "house.circle.fill").resizable().aspectRatio( contentMode: .fit)
                                        
                                    }*/
                                
                                
                            }
                            
                            
                        }
                        
                        
                    }.padding()
                    
                } else if selectedTab == "Reviews" {
                    VStack {
                        HStack(spacing: 15) {
                            Text("Review 1:")
                                .font(.title3)
                                .foregroundColor(Color.primary)
                            
                            HStack(spacing: 0) {
                                Image(systemName: "star.fill")
                                    .font(.title3)
                                Image(systemName: "star.fill")
                                    .font(.title3)
                                Image(systemName: "star.fill")
                                    .font(.title3)
                                Image(systemName: "star.fill")
                                    .font(.title3)
                                Image(systemName: "star.fill")
                                    .font(.title3)
                                Image(systemName: "star.fill")
                                    .font(.title3)
                            }.foregroundColor(.yellow)
                                .font(.title3)
                            Spacer()
                        }
                        Divider()
                        HStack(spacing: 15) {
                            Text("Review 2:")
                                .font(.title3)
                                .foregroundColor(Color.primary)
                            
                            HStack(spacing: 0) {
                                Image(systemName: "star.fill")
                                    .font(.title3)
                                Image(systemName: "star.fill")
                                    .font(.title3)
                                Image(systemName: "star.fill")
                                    .font(.title3)
                                Image(systemName: "star.fill")
                                    .font(.title3)
                            }.foregroundColor(.yellow)
                            Spacer()
                        }
                    }
                    .padding()
                }
                
                
                HStack(spacing: 0) {
                    
                    Text("$\(hotel.price)/")
                        .foregroundColor(Color.indigo)
                        .font(.headline)
                    Text(" night")
                        .foregroundColor(Color.primary)
                        .font(.headline)
                    
                    Spacer()
                    
                    NavigationLink {
                        
                        BookingView(hotel: hotel).navigationBarBackButtonHidden(true)
                        
                        
                    } label: {
                        
                        RoundedRectangle(cornerRadius: 10).frame(width: 150, height: 60).foregroundColor(Color.gray).overlay {
                            Text("Book Now").foregroundColor(.white).bold()
                        }
                        
                    }

                    
                }.padding()
                
                
                
            }.navigationTitle("\(hotel.name) Hotel").navigationBarTitleDisplayMode(.inline).toolbar {
                
                ToolbarItem(placement: .navigationBarLeading) {
                    
                    Button {
                        
                        presentationMode.wrappedValue.dismiss()
                        
                    } label: {
                        Image(systemName: "arrow.down").foregroundColor(.white)
                    }

                    
                }
                
            }
            
        }
        
    }
    
}


struct HotelView_Previews: PreviewProvider {
    static var previews: some View {

        HotelView(hotel: .constant(Hotel(name: "grandHyatt", details: "Lorem ipsum dolor", price: 1500, image: Images.grandHyatt, rating: 4.8, numRatings: "6.6k", facilities:
                                                        Facility(availableRooms: 10, ac: true, generator: true, parking: true, atm: false, meal: false, snacks: true, wifi: true, hospital: true, sports: true, tv: true, balcony: true))))

    }
}
