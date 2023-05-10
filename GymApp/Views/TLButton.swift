//
//  TLButton.swift
//  GymApp
//
//  Created by MacBook Aor on 2023-05-08.
//

import SwiftUI

struct TLButton: View {
    
    let title : String
    let background : Color
    let action : () -> Void
    
    var body: some View {
        
        Button {
        action()
        } label: {
            ZStack{
                RoundedRectangle(cornerRadius: 10)
                    .foregroundColor(background)
                
            Text(title)
                    .foregroundColor(Color.black)
                    .bold()
            }
        }

    }
}

struct TLButton_Previews: PreviewProvider {
    static var previews: some View {
        TLButton(title: "value", background: .yellow) {
            //Action
        }
    }
}
