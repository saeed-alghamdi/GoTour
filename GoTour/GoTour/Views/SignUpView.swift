//
//  SignUpView.swift
//  GoTour
//
//  
//

import SwiftUI

struct SignUpView: View {
    
    
    init() {
        
        let navigationView = UINavigationBarAppearance()
        navigationView.backgroundColor = UIColor.gray
        navigationView.titleTextAttributes = [.foregroundColor : UIColor.white]
        navigationView.largeTitleTextAttributes = [.foregroundColor : UIColor.white]
        
        UINavigationBar.appearance().scrollEdgeAppearance = navigationView
        UINavigationBar.appearance().standardAppearance = navigationView
        UINavigationBar.appearance().compactAppearance = navigationView
        
    }
    
    
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    
    
    @State var showMainTabView: Bool = false
    
    
    @State var email: String = ""
    @State var password: String = ""
    @State var confirmPassword = ""
    
    
    var body: some View {
        
        NavigationView {
            
            ZStack {
                
                Color(uiColor: UIColor.gray).ignoresSafeArea()
                
                VStack(spacing: 20) {
                    
                    
                    VStack(spacing: 5) {
                        
                        HStack(spacing: 5) {
                            
                            Image(systemName: "envelope.fill").foregroundColor(Color(uiColor: UIColor.gray))
                            
                            Text("Email").font(.body).foregroundColor(Color(uiColor: UIColor.gray))
                            Spacer()
                        }
                        
                        
                        HStack {
                            TextField("", text: $email).autocorrectionDisabled(true)
                                .foregroundColor(Color.primary)
                                
                        }.padding().background {
                            RoundedRectangle(cornerRadius: 8)
                                .foregroundColor(Color(uiColor: UIColor.tertiaryLabel))
                            
                        }
                        
                        
                    }
                    
                    
                    
                    VStack(spacing: 5) {
                        
                        HStack(spacing: 5) {
                            
                            Image(systemName: "lock.fill").foregroundColor(Color(uiColor: UIColor.gray))
                            
                            Text("Password").font(.body).foregroundColor(Color(uiColor: UIColor.gray))
                            Spacer()
                        }
                        
                        
                        HStack {
                            SecureField("", text: $password).autocorrectionDisabled(true)
                                .foregroundColor(Color.primary)
                                
                        }.padding().background {
                            RoundedRectangle(cornerRadius: 8)
                                .foregroundColor(Color(uiColor: UIColor.tertiaryLabel))
                            
                        }
                        
                    }
                    
                    VStack(spacing: 5) {
                        
                        HStack(spacing: 5) {
                            
                            Image(systemName: "lock.fill").foregroundColor(Color(uiColor: UIColor.gray))
                            
                            Text("Confirm Password").font(.body).foregroundColor(Color(uiColor: UIColor.gray))
                            Spacer()
                        }
                        
                        
                        HStack {
                            SecureField("", text: $confirmPassword).autocorrectionDisabled(true)
                                .foregroundColor(Color.primary)
                                
                        }.padding().background {
                            RoundedRectangle(cornerRadius: 8)
                                .foregroundColor(Color(uiColor: UIColor.tertiaryLabel))
                            
                        }
                        
                        
                    }
                    
                    Spacer()
                    
                    
                    Button {
                        
                        showMainTabView = true
                        
                    } label: {
                        
                        ZStack {
                            
                            RoundedRectangle(cornerRadius: 20).foregroundColor(Color(uiColor: UIColor.gray)).frame(height: 65)
                            
                            Text("Sign Up").foregroundColor(Color.white).font(.title3).bold()
                            
                        }
                        
                    }.fullScreenCover(isPresented: $showMainTabView) {
                        
                        MainTabView()
                        
                    }

                    Spacer()
                    
                }.padding().frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height - 150).background {
                    
                    RoundedRectangle(cornerRadius: 35)
                        .foregroundColor(Color(uiColor: UIColor.secondarySystemGroupedBackground))
                        .ignoresSafeArea(.all)
                    
                }.padding(.top, UIScreen.main.bounds.maxY / 5)
                
                
            }.navigationBarBackButtonHidden(true).navigationBarBackButtonHidden(true).navigationTitle(Text("Sign Up")).navigationBarTitleDisplayMode(.inline).toolbar {
                
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
    
}

struct SignUpView_Previews: PreviewProvider {
    static var previews: some View {
        SignUpView()
    }
}
