//
//  PasswordField.swift
//  GoTour
//
//  
//

import SwiftUI

/* HStack(spacing: 5) {
 
 Image(systemName: "envelope.fill").foregroundColor(Color(uiColor: UIColor.gray))
 
 Text("Email").font(.body).foregroundColor(Color(uiColor: UIColor.gray))
 Spacer()
}


HStack {
 TextField("", text: $email).autocorrectionDisabled(true)
     .foregroundColor(Color.primary)
     
}.padding()
.background {
 RoundedRectangle(cornerRadius: 8)
     .foregroundColor(Color(uiColor: UIColor.tertiaryLabel))
 
}*/

struct PasswordField: View {
    
    @Binding var password: String
    @Binding var showPassword: Bool
    var confirmPassword: String
    
    var body: some View {
        
        VStack(spacing: 10) {
            
            HStack(spacing: 5) {
                
                Image(systemName: "lock.fill").foregroundColor(Color(uiColor: UIColor.gray))
                
                Text(confirmPassword).font(.body).foregroundColor(Color(uiColor: UIColor.gray))
                Spacer()
            }

            
            if showPassword {
                
                HStack {
                    
                    TextField("", text: $password).autocorrectionDisabled(true)
                        .foregroundColor(Color.primary)
                    
                    Button {
                        showPassword.toggle()
                    } label: {
                        Image(systemName: showPassword ? "eye" : "eye.slash").foregroundColor(showPassword ? Color.primary : Color.gray)
                    }
                    
                }.padding().background {
                        RoundedRectangle(cornerRadius: 8)
                            .foregroundColor(Color(uiColor: UIColor.tertiaryLabel))
                        
                }
                
                
            } else {
                
                
                HStack {
                    
                    SecureField("", text: $password).autocorrectionDisabled(true).foregroundColor(Color.primary)
                    
                    Button {
                        showPassword.toggle()
                    } label: {
                        Image(systemName: showPassword ? "eye" : "eye.slash").foregroundColor(showPassword ? Color.primary : Color.gray)
                    }
                    
                     
                }.padding().background {
                 RoundedRectangle(cornerRadius: 8)
                     .foregroundColor(Color(uiColor: UIColor.tertiaryLabel))
                 
                }
                
            }

        }
        
    }
}


struct PasswordField_Preview: PreviewProvider {
    
    static var previews: some View {
        
        PasswordField(password: .constant("1223"), showPassword: .constant(true), confirmPassword: "confirmPassword")
        
    }
    
}
