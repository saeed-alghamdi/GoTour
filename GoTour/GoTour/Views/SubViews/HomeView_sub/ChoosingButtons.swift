//
//  FilterButtons.swift
//  GoTour
//
//
//

import SwiftUI

struct ChoosingButtons: View {
    
    var body: some View {
        
        HStack {
            
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
    }
}



struct ChoosingButtons_Previews: PreviewProvider {
    
    static var previews: some View {
        
        ChoosingButtons()
        
    }
    
}
