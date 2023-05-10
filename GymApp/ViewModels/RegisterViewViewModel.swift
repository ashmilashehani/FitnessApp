//
//  RegisterViewViewModel.swift
//  GymApp
//
//  Created by MacBook Aor on 2023-05-08.
//

import Foundation

class RegisterViewModel : ObservableObject{
    
    @Published var name = ""
    @Published var age = ""
    @Published var weight = ""
    @Published var height = ""
    
    init() {}
    
    func register (){
        
    }
    
    private func validate(){
        
    }
    }
