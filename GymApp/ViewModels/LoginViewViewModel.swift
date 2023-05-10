//
//  LoginViewViewModel.swift
//  GymApp
//
//  Created by MacBook Aor on 2023-05-08.
//
 import FirebaseCore
import Foundation

class LoginViewViewModel : ObservableObject {
    
    @Published var name = ""
    @Published var gender = ""
    @Published var errorMessage = ""
    
    init(){}
    
    func login(){
        guard validate() else {
            return
        }
      
    // try log in
    // Auth.auth().signIn(withname: name, gender:gender)
    }
    
   private func validate () -> Bool {
       
       errorMessage = ""
       guard !name.trimmingCharacters(in: .whitespaces).isEmpty,
             !gender.trimmingCharacters(in: .whitespaces).isEmpty else {
           
           errorMessage = "PLEASE FILL ALL FIELDS"
           return false
       }
       
       guard gender.contains("male") && gender.contains("female") else {
           errorMessage = "Please enter male or female"
           return false
       }
       return true
    }
}
