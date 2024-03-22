//
//  ReviewView.swift
//  GoTour
//
//
//

import SwiftUI


struct ReviewView: View {
    
    
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    
    
    @State private var longText: String = "Write your stay experience here..."
    
    
    @State var valueStepper = "⭐️"
    
    var body: some View {
        
        ZStack {
            
            Color(uiColor: UIColor.tertiarySystemGroupedBackground).ignoresSafeArea()
            
            ScrollView {
                
                
                VStack {
                    
                    TextEditor(text: $longText).foregroundColor(longText == "Write your stay experience here..." ? .gray : .primary).background(Color.white).frame(width: UIScreen.main.bounds.width - 40, height: UIScreen.main.bounds.height / 3).multilineTextAlignment(.leading).textFieldStyle(.roundedBorder).border(.primary, width: 0.25).onTapGesture {
                        
                        longText = ""
                        
                    }
                    
                    
                    
                    Stepper("Review the app") {
                        
                        if valueStepper.count < 5 {
                            
                            valueStepper += "⭐️"
                            
                        }
                        
                    } onDecrement: {
                        
                        if valueStepper.count > 1 {
                            valueStepper.removeLast()
                        }
                        
                    }.padding()
                    
                    
                    
                    Text("\(valueStepper)")
                    
                    Button {
                        
                        presentationMode.wrappedValue.dismiss()
                        
                    } label: {
                        
                        ZStack {
                            
                            RoundedRectangle(cornerRadius: 10)
                                .foregroundColor(Color.yellow)
                                .frame(height: 60)
                            Text("Submit your Review")
                                .foregroundColor(Color.black)
                                .font(.title3)
                                .bold()
                            
                        }
                        
                    }.padding()
                    
                    
                    
                }.padding(.top, 50)
                
                
            }
            
            
        }.navigationTitle(Text("Review")).navigationBarTitleDisplayMode(.inline).toolbar {
            
            ToolbarItem(placement: .navigationBarLeading) {
                
                Button {
                    
                    presentationMode.wrappedValue.dismiss()
                    
                } label: {
                    
                    Image(systemName: "chevron.left").foregroundColor(Color.white)
                    
                }
                
            }
            
        }
        
    }
    
}


struct ReviewView_Previews: PreviewProvider {
    static var previews: some View {
        
        ReviewView()
        
    }
}
