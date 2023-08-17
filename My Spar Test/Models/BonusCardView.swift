//
//  BonusCard.swift
//  My Spar Test
//
//  Created by Павел Сидоров on 17.08.2023.
//

import SwiftUI

struct BonusCardView: View {
    
    let screen = UIScreen.main.bounds.size
    
    var body: some View {
        ZStack(alignment: .leading) {
            Rectangle()
                .fill(LinearGradient(gradient: Gradient(colors: [Color(red: 231/255, green: 231/255, blue: 231/255), .gray]), startPoint: .bottomTrailing, endPoint: .topLeading))
                .frame(width: screen.width - 20, height: 160)
                .cornerRadius(20)
                .shadow(color: .black.opacity(0.6), radius: 2, x: 0, y: 1)
             
            HStack {
                HStack {
                    Text("0")
                        .font(.system(size: 45, weight: .semibold))
                        .frame(width: 30, height: 30, alignment: .bottom)
                    Text("бонусов")
                        .fontWeight(.semibold)
                }
                .frame(width: 110, height: 50)
                .padding(.leading, 18)
                .padding(.bottom, 60)
                
                Image("QR-Code")
                    .frame(width: 90, height: 90)
                    .padding()
                    .frame(width: 120, height: 120)
                    .background(Color.white)
                    .cornerRadius(20)
                    .padding(.leading, 90)
            }
        }
    }
}

struct BonusCard_Previews: PreviewProvider {
    static var previews: some View {
        BonusCardView()
    }
}
