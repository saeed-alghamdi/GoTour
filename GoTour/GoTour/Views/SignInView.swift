//
//  SigninView.swift
//  GoTour
//
//
//


import SwiftUI

struct SignInView: View {
    
    
    init() {
        
        let navigationView = UINavigationBarAppearance()
        navigationView.backgroundColor = UIColor.gray
        navigationView.titleTextAttributes = [.foregroundColor : UIColor.white]
        navigationView.largeTitleTextAttributes = [.foregroundColor : UIColor.white]
        
        UINavigationBar.appearance().scrollEdgeAppearance = navigationView
        UINavigationBar.appearance().standardAppearance = navigationView
        UINavigationBar.appearance().compactAppearance = navigationView
        
    }
    
    @State private var email: String = ""
    
    
    @State private var password: String = ""
    
    
    @State private var showPassword: Bool = false
    
    
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    
    
    @State var showMainTabView: Bool = false
    
    
    var body: some View {
        
        NavigationView {
            
            ZStack {
                
                Color(uiColor: UIColor.gray).ignoresSafeArea()
                
                VStack {
                    
                    VStack {
                        
                        VStack {
                            
                            VStack {
                                
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
                            
                            
                            VStack {
                                
                                PasswordField(password: $password, showPassword: $showPassword, confirmPassword: "Password")
                                
                                
                            }
                            
                            
                            Button {
                                
                                showMainTabView = true
                                
                            } label: {
                                
                                ZStack {
                                    
                                    RoundedRectangle(cornerRadius: 20).foregroundColor(Color(uiColor: UIColor.gray)).frame(height: 65)
                                    
                                    Text("Sign In").foregroundColor(Color.white).font(.title3).bold()
                                    
                                }
                                
                            }.padding(.top, 20).fullScreenCover(isPresented: $showMainTabView) {
                                
                                MainTabView()
                                
                            }

                            
                        }.padding(.top, 20)
                        
                        
                        HStack {
                            
                            Text("Don't have an accout?").foregroundColor(Color.indigo).font(.body)
                            
                            NavigationLink {
                                
                                SignUpView()
                                
                            } label: {
                                
                                Text("Sign Up").foregroundColor(Color(uiColor: UIColor.systemGray)).font(.body).bold()
                                
                            }

                            
                        }
                        
                        
                        
                        Spacer()
                        
                    }.padding()
                    
                    
                }.frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height - 150).background {
                    
                    RoundedRectangle(cornerRadius: 35)
                        .foregroundColor(Color(uiColor: UIColor.secondarySystemGroupedBackground))
                        .ignoresSafeArea(.all)
                    
                }.padding(.top, UIScreen.main.bounds.maxY / 5)
                
                
            }.navigationTitle(Text("Sign In")).navigationBarTitleDisplayMode(.inline).toolbar {
                
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


struct SigninView_Previews: PreviewProvider {
    
    static var previews: some View {
        
        SignInView()
        
    }
    
}
