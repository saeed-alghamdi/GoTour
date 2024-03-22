//
//  UserDefaults.swift
//  GoTour
//
//  
//

import Foundation

class SelectedUser: ObservableObject {
    @Published var selectedUser: Int? = UserDefaults.standard.integer(forKey: "selectedUser") {
        didSet {
            UserDefaults.standard.set(selectedUser, forKey: "selectedUser")
        }
    }
    
    func getUser() -> Int? {
        return selectedUser
    }
}
