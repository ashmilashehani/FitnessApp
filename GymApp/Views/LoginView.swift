//
//  LoginView.swift
//  GymApp
//
//  Created by MacBook Aor on 2023-05-08.
//

import SwiftUI

struct LoginView: View {
    
  @StateObject var ViewModel = LoginViewViewModel()
    
    
    var body: some View {
        NavigationView{
            VStack{
                
                // Header
                HeaderView(title:"Let's Work Out",
                           subtitle: "Plan From Here", angle: 15, background: .yellow)
             
                
                // Login Form
                
                Form{
                    
                    
                    if !ViewModel.errorMessage.isEmpty{
                        Text(ViewModel.errorMessage)
                            .foregroundColor(Color.red)
                    }
                    
                    
                    TextField("What is your name?", text: $ViewModel.name)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                    
                    
                    TextField("What id your gender", text: $ViewModel.gender)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                        .offset(y:10)
                 
                    TLButton(
                        title: "Continue",
                        background: .yellow
                    ){
                        ViewModel.login()
                        
                    }
                    .padding()
                }
                .offset(y:10)
                
                // Create Account
                
                VStack{
                    Text("New Around Here?")
                   
                    NavigationLink("Let's Begin", destination: RegisterView())
                }
                
                .padding(.bottom,50)
                
               
                
                
                Spacer()
            }        }
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
