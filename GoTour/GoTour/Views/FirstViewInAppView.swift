//
//  FirstViewInAppView.swift
//  GoTour
//
//
//

import SwiftUI

struct FirstViewInAppView: View {
    
    @State var showSingInSheet: Bool = false
    @State var showSingUpSheet: Bool = false
    
    
    var body: some View {
        
        VStack(spacing: 50) {
            
            Circle().frame(width: UIScreen.main.bounds.width / 2).foregroundColor(Color.cyan).overlay {
                    
                Images.goTour.resizable().aspectRatio(contentMode: .fit)
                
            }
            
            VStack(spacing: 20) {
                
                Button {
                    
                    showSingInSheet = true
                    
                } label: {
                    
                    RoundedRectangle(cornerRadius: 10).frame(width: UIScreen.main.bounds.width - 40, height: 60, alignment: .center).overlay {
                        
                        Text("Sign In").foregroundColor(.white).bold()
                        
                    }
                    
                    
                }.fullScreenCover(isPresented: $showSingInSheet) {
                    
                    SignInView()
                    
                }

                
                
                
                Button {
                    
                    showSingUpSheet = true
                    
                } label: {
                    
                    RoundedRectangle(cornerRadius: 10).frame(width: UIScreen.main.bounds.width - 40, height: 60, alignment: .center).overlay {
                        
                        Text("Sign Up").foregroundColor(.white).bold()
                        
                    }
                    
                }.fullScreenCover(isPresented: $showSingUpSheet) {
                    
                    SignUpView()
                    
                }

            }
            
        }.padding(.bottom, 150)
        
    }
    
    
}

struct FirstViewInAppView_Previews: PreviewProvider {
    static var previews: some View {
        FirstViewInAppView()
    }
}
