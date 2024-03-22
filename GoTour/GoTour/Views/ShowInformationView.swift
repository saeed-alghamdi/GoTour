//
//  ShowInformationView.swift
//  GoTour
//
//
//

import SwiftUI

struct ShowInformationView: View {
    
    
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    
    
    var body: some View {
        
        NavigationView {
            
            List {
                
                HStack {
                    
                    
                    Circle().frame(width: 50, height: 50, alignment: .center).foregroundColor(.purple).opacity(0.25).overlay {
                        
                        Image(systemName: "book.fill").resizable().frame(width: 25, height: 20, alignment: .center).foregroundColor(.purple)
                        
                    }
                    
                    VStack(alignment: .leading) {
                        Text("Creation").bold()
                        Text("2/09/18").foregroundColor(.gray)
                    }
                    
                    
                }
                
                HStack {
                    
                    
                    Circle().frame(width: 50, height: 50, alignment: .center).foregroundColor(.orange).opacity(0.25).overlay {
                        
                        Image(systemName: "person.circle.fill").resizable().frame(width: 25, height: 25, alignment: .center).foregroundColor(.orange)
                        
                    }
                    
                    VStack(alignment: .leading) {
                        Text("Your Name").bold()
                        Text("John F. Kenedy").foregroundColor(.gray)
                    }
                    
                    
                }
                
                HStack {
                    
                    
                    Circle().frame(width: 50, height: 50, alignment: .center).foregroundColor(.pink).opacity(0.25).overlay {
                        
                        Image(systemName: "arrow.down.to.line.circle.fill").resizable().frame(width: 25, height: 25, alignment: .center).foregroundColor(.pink)
                        
                    }
                    
                    VStack(alignment: .leading) {
                        Text("Birthday").bold()
                        Text("1/09/1988").foregroundColor(.gray)
                    }
                    
                    
                }
                
                HStack {
                    
                    
                    Circle().frame(width: 50, height: 50, alignment: .center).foregroundColor(.primary).opacity(0.25).overlay {
                        
                        Image(systemName: "mappin.and.ellipse").resizable().frame(width: 25, height: 25, alignment: .center).foregroundColor(.primary)
                        
                    }
                    
                    VStack(alignment: .leading) {
                        Text("Location").bold()
                        Text("U.S Florida").foregroundColor(.gray)
                    }
                    
                    
                }
                
                HStack {
                    
                    
                    Circle().frame(width: 50, height: 50, alignment: .center).foregroundColor(.teal).opacity(0.25).overlay {
                        
                        Image(systemName: "creditcard.fill").resizable().frame(width: 25, height: 20, alignment: .center).foregroundColor(.teal)
                        
                    }
                    
                    VStack(alignment: .leading) {
                        Text("Type Of Credit Card").bold()
                        Text("American Express").foregroundColor(.gray)
                    }
                    
                    
                }
                
            }.listStyle(.sidebar).navigationTitle("Information").navigationBarTitleDisplayMode(.inline).toolbar {
                
                ToolbarItem(placement: .navigationBarLeading) {
                    
                    Button("Cancel") {
                        
                        presentationMode.wrappedValue.dismiss()
                        
                    }.foregroundColor(.white)
                    
                }
                
            }
            
        }
        
    }
    
}

struct ShowInformationView_Previews: PreviewProvider {
    static var previews: some View {
        ShowInformationView()
    }
}
