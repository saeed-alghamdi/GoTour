//
//  BookingView.swift
//  GoTour
//
//  
//

import SwiftUI


struct BookingView: View {
    
    
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    
    
    @State var name : String = ""
    @State var email : String = ""
    @State var phone : String = ""
    @State var howManyGuest : Int = 1
    @State var howManyRoomsYouWants : Int = 1
    
    @State var country : Country = Country.countries.first!
    
    
    var hotel: Hotel
    
    var body: some View {
        
        ScrollView {
            
            VStack {
                
                // MARK: - Top Views
                hotel.image
                    .resizable()
                    .clipShape(RoundedRectangle(cornerRadius: 10))
                    .frame(width: UIScreen.main.bounds.width - 20, height: UIScreen.main.bounds.height / 3)
                    .padding(.top, 32)
                
                HStack {
                    
                    VStack {
                        
                        Text("\(hotel.name) Hotel").font(.title3).bold().foregroundColor(Color.primary)
                        
                    }
                    
                    Spacer()
                    
                    HStack {
                        
                        Image(systemName: "star.fill").foregroundColor(.yellow)
                        Text("\(hotel.rating.formatted())")
                        Text("(\(hotel.numRatings) reviews)")
                        
                    }.foregroundColor(Color.primary).font(.subheadline)
                    
                }.padding([.leading, .trailing])
                
                
                
                VStack(spacing: -15) {
                    
                    
                    // MARK: - Fields
                    VStack(spacing: 5) {
                        
                        HStack {
                            Text("Name")
                                .font(.body)
                                .foregroundColor(Color(uiColor: UIColor.gray))
                            Spacer()
                        }
                        
                        
                        HStack {
                            TextField("", text: $name).autocorrectionDisabled(true)
                                .foregroundColor(Color.primary)
                                
                        }.padding()
                        .background {
                            RoundedRectangle(cornerRadius: 8)
                                .foregroundColor(Color(uiColor: UIColor.tertiaryLabel))
                        }
                        
                        
                    }.padding()
                    
                    VStack(spacing: 5) {
                        
                        HStack {
                            Text("Email Address")
                                .font(.body)
                                .foregroundColor(Color(uiColor: UIColor.gray))
                            Spacer()
                        }
                        
                        
                        HStack {
                            TextField("", text: $email).autocorrectionDisabled(true)
                                .foregroundColor(Color.primary)
                                
                        }.padding()
                        .background {
                            RoundedRectangle(cornerRadius: 8)
                                .foregroundColor(Color(uiColor: UIColor.tertiaryLabel))
                        }
                        
                    }.padding()
                    
                    
                    VStack(spacing: 5) {
                        
                        HStack {
                            Text("Phone Number")
                                .font(.body)
                                .foregroundColor(Color(uiColor: UIColor.systemGray))
                            
                            Spacer()
                        }
                        
                        HStack {
                            
                            Menu {
                                
                                ForEach(Country.countries) { country in
                                    
                                    DropDownButton(selecteCountry: $country, phoneKey: $phone, country: country)
                                    
                                }
                                
                            } label: {
                                
                                HStack(spacing: 5) {
                                    
                                    Text(country.flag)
                                        .font(.title)
                                    
                                    Image(systemName: "arrowtriangle.up.fill")
                                        .foregroundColor(Color.primary)
                                        .font(.caption)
                                }
                                .padding(.horizontal)
                                .padding(.vertical, 10)
                                .background {
                                    RoundedRectangle(cornerRadius: 8)
                                        .foregroundColor(Color(uiColor: UIColor.tertiaryLabel))
                                }
                                
                            }
                            
                            TextField("Choose Your Country", text: $phone).keyboardType(.phonePad).padding().foregroundColor(Color.primary).background {
                                    RoundedRectangle(cornerRadius: 8)
                                        .foregroundColor(Color(uiColor: UIColor.tertiaryLabel))
                                }
                            
                        }
                        
                        
                    }.padding()
                    
                    
                    
                    // MARK: - Guests - Rooms
                    VStack(spacing: 5) {
                        
                        HStack {
                            
                            Text("Room Needs").font(.body).foregroundColor(Color(uiColor: UIColor.systemGray))
                            
                            Spacer()
                        }
                        
                        HStack {
                            
                            Menu {
                                
                                ForEach(1..<6) { num in
                                    
                                    
                                    Button {
                                        
                                        howManyGuest = num
                                        
                                    } label: {
                                        
                                        Text("\(num) Guests").font(.body).foregroundColor(Color.primary)
                                        
                                    }

                                }
                                
                            } label: {
                                
                                HStack {
                                    
                                    Text("\(howManyGuest) Guests").font(.body).bold().foregroundColor(Color.primary)
                                    
                                    Image(systemName: "arrowtriangle.up.fill")
                                        .foregroundColor(Color.primary).font(.caption)
                                }
                                
                            }.padding().background {
                                
                                RoundedRectangle(cornerRadius: 8)
                                    .foregroundColor(Color(uiColor: UIColor.tertiaryLabel))
                                
                            }
                            
                            Spacer()
                            
                            HStack(spacing: 20) {
                                
                                
                                Button {
                                    
                                    if howManyRoomsYouWants > 1 {
                                        howManyRoomsYouWants -= 1
                                    }
                                    
                                } label: {
                                    
                                    Image(systemName: "minus").font(.headline).foregroundColor(Color.red)
                                    
                                }

                                
                                Text("\(howManyRoomsYouWants)  Rooms").font(.body).foregroundColor(Color.primary).bold()
                                
                                
                                Button {
                                    
                                    if howManyRoomsYouWants < 5 {
                                        howManyRoomsYouWants += 1
                                    }
                                    
                                } label: {
                                    
                                    Image(systemName: "plus")
                                        .font(.headline)
                                        .foregroundColor(Color.blue)
                                    
                                }

                            }
                            
                        }
                        
                    }.padding()
                    
                    VStack {
                        
                        
                        Button {
                            
                            // ...
                            
                        } label: {
                            
                            RoundedRectangle(cornerRadius: 10).foregroundColor(Color.gray).frame(width: UIScreen.main.bounds.width - 40, height: 60, alignment: .center).overlay {
                                
                                Text("Proceed to Pay")
                                    .foregroundColor(Color.white)
                                    .font(.title3)
                                    .bold()
                                
                            }
                            
                        }

                    }.padding([.top, .bottom], 40)
                    
                }
                
            }
            
        }.navigationTitle(Text("\(hotel.name) Hotel")).navigationBarTitleDisplayMode(.inline).toolbar {
            
            ToolbarItem(placement: .navigationBarLeading) {
                
                Button {
                    
                    presentationMode.wrappedValue.dismiss()
                    
                } label: {
                    
                    Image(systemName: "arrow.left").foregroundColor(.white)
                    
                }

            }
            
        }
        
    }
    
}




struct BookingView_Previews: PreviewProvider {
    
    static var previews: some View {
        
        BookingView(hotel: Hotel.hotels.last!)
        
        
    }
    
}
