//
//  ProfileView.swift
//  GoTour
//
//  
//

import SwiftUI

struct ProfileView: View {
    
    
    @State var showInformationView: Bool = false
    @State var signOut: Bool = false
    
    
    var body: some View {
        
        VStack {
            
            VStack {
                
                Circle().frame(width: 180, height: 180, alignment: .center).foregroundColor(.purple).shadow(radius: 5).overlay {
                    
                    Image(systemName: "person.fill").resizable().foregroundColor(.white).aspectRatio(contentMode: .fit).frame(width: 100, height: 100, alignment: .center)
                    
                }
                
                Text("John F.").foregroundColor(.primary).font(.largeTitle).bold()
                Text("Kenndy").font(.largeTitle).bold().foregroundColor(.gray)
                
            }.padding(.top, 80)
            
            //Spacer()
            
            List {
                
                Button {
                    
                    showInformationView = true
                    
                } label: {
                    
                    HStack {
                        
                        Circle().fill(Color.orange).opacity(0.25).frame(width: 50, height: 50, alignment: .center).overlay {
                            
                            Image(systemName: "circle.dashed.inset.filled").resizable().frame(width: 25, height: 25, alignment: .center).foregroundColor(.red)
                            
                        }
                        
                        Text("Show Information").foregroundColor(.primary).font(.headline).bold().padding(.leading, 10)
                        
                        Spacer()
                        
                        Circle().foregroundColor(.gray).opacity(0.15).frame(width: 40, height: 40, alignment: .center).overlay {
                            
                            Image(systemName: "chevron.up").foregroundColor(.primary)
                            
                        }
                        
                    }
                    
                }.sheet(isPresented: $showInformationView) {
                    
                    ShowInformationView()
                    
                }

                
            }.listStyle(.plain)
            
            
            VStack {
                
                
                Button {
                    
                    signOut = true
                    
                } label: {
                    
                    RoundedCorner(radius: 30).frame(width: UIScreen.main.bounds.width - 40, height: 50, alignment: .center).foregroundColor(.gray).opacity(0.25).overlay {
                        
                        Text("Sing Out").bold().foregroundColor(.red)
                        
                    }
                    
                }.fullScreenCover(isPresented: $signOut) {
                    
                    FirstViewInAppView()
                    
                }

                Spacer()
                
            }
            
        }
        
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
