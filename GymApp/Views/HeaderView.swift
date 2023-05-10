//
//  HeaderView.swift
//  GymApp
//
//  Created by MacBook Aor on 2023-05-08.
//

import SwiftUI

struct HeaderView: View {
    let title : String
    let subtitle : String
    let angle : Double
    let background : Color
    
    var body: some View {
    
        ZStack{
            RoundedRectangle(cornerRadius: 0)
                .foregroundColor(background)
                .rotationEffect(Angle(degrees: angle))
                
            
            VStack{
                Text(title)
                    .font(.system(size:40))
                    .foregroundColor(Color.black)
                    .bold()
                Text(subtitle)
                    .font(.system(size:30))
                    .foregroundColor(Color.black)
            }
            .padding(.top,100)
        }
        .frame(width: UIScreen.main.bounds.width * 3,
               height: 300)
        .offset(y:-150)
        
        
    }
}

struct HeaderView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderView(title : "Title",
                subtitle : "Subtitle" ,
                 angle: 15,
                   background: .yellow)
    }
}
