//
//  OfferView.swift
//  GoTour
//
//
//

import SwiftUI


struct UISearchController: UIViewRepresentable {
    
    func makeUIView(context: Context) -> UISearchBar {
        
        let searchUIView = UISearchBar(frame: .zero)
        searchUIView.delegate = context.coordinator
        searchUIView.searchBarStyle = .minimal
        searchUIView.placeholder = "Search Here"
        searchUIView.tintColor = UIColor(.primary)
        return searchUIView
    }
    
    
    func updateUIView(_ uiView: UISearchBar, context: Context) {
        
        
    }
    
    
    func makeCoordinator() -> UISearchDelegate {
        return UISearchDelegate()
    }
    
    
    class UISearchDelegate: NSObject, UISearchBarDelegate {
        
        // hide keyboard when click on cancel button
        func searchBarCancelButtonClicked(_ searchBar: UISearchBar) {
            
            searchBar.resignFirstResponder()
            searchBar.showsCancelButton = false
            
        }
        
        
        func searchBarSearchButtonClicked(_ searchBar: UISearchBar) {
            
            searchBar.resignFirstResponder()
            searchBar.showsCancelButton = false
            
        }
        
        func searchBarTextDidBeginEditing(_ searchBar: UISearchBar) {
            
            searchBar.showsCancelButton = true
            
        }
        
        
    }
    
}


struct OfferView: View {
    
    
    init() {
        
        let newNavigation = UINavigationBarAppearance()
        newNavigation.backgroundColor = .gray
        newNavigation.largeTitleTextAttributes = [.foregroundColor : UIColor.white]
        UINavigationBar.appearance().scrollEdgeAppearance = newNavigation
        UINavigationBar.appearance().standardAppearance = newNavigation
        UINavigationBar.appearance().compactAppearance = newNavigation
        
    }
    
    var body: some View {
        
        NavigationView {
            
            VStack {
                
                UISearchController().padding()
                
                ScrollView {
                    
                    Text("There is no offer today").foregroundColor(.gray)
                    
                }
                
                
            }.navigationTitle(Text("Offers")).navigationBarTitleDisplayMode(.large)
            
        }
            
    }
    
}


struct OfferView_Previews: PreviewProvider {
    
    static var previews: some View {
        
        OfferView()
        
    }
    
}
