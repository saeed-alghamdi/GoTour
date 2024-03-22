//
//  TestingView.swift
//  GoTour
//
//  
//

import SwiftUI

struct TestingView: View {
    
    
    @State var edgesOfView: CGFloat = 0.0
    
    
    var body: some View {
        
        VStack(spacing: 0) {
            
            VStack {
                
                Text("hello again")
                
            }.frame(height: UIScreen.main.bounds.height / 2).background(Color.red)
            
            
            VStack {
                
                Text("hello again")
                
            }.frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height / 2).background(Color.blue)
            
        }
        
    }
    
}

struct TestingView_Previews: PreviewProvider {
    static var previews: some View {
        TestingView()
    }
}
