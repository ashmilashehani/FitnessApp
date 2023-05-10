//
//  RegisterView.swift
//  GymApp
//
//  Created by MacBook Aor on 2023-05-08.
//

import SwiftUI

struct RegisterView: View {
    
    
    var body: some View {
        VStack{
            
            // Header
            HeaderView(title:"Let's Start",
                       subtitle: "Get Your Workout Plan", angle: -15, background: .yellow)
            
            Form{
                TextField("What is your name?",text: $name)
                    .textFieldStyle(DefaultTextFieldStyle())
                    .autocorrectionDisabled()
                
                TextField("How old are you?", text: $age)
                TextField("What is your weight",text: $weight)
                TextField("What is you height?",text: $height)
                
                TLButton(
                    title: "Continue",
                    background: .yellow
                ){
                    //attempt log in
                }
                .padding()
            }
            .offset(y:-50)

            Spacer()
            
        }
    }
}

struct RegisterView_Previews: PreviewProvider {
    static var previews: some View {
        RegisterView()
    }
}
