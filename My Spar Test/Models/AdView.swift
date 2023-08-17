//
//  AdView.swift
//  My Spar Test
//
//  Created by Павел Сидоров on 16.08.2023.
//

import SwiftUI

struct AdView: View {
    
    let ad: Ad
    
    var body: some View {
        ZStack(alignment: .leading) {
            Rectangle()
                .fill(ad.foregroundColor)
                .frame(width: 360, height: 180)
                .cornerRadius(20)
            
            HStack {
                ZStack {
                    Rectangle()
                        .frame(width: 130, height: 30)
                        .foregroundColor(.yellow)
                        .cornerRadius(8)
                    
                    Text(ad.firstLabel)
                        .foregroundColor(Color(red: 42/255, green: 138/255, blue: 54/255))
                        .font(.system(size: 13, weight: .bold))
                }
                
                ZStack {
                    Rectangle()
                        .frame(width: 130, height: 30)
                        .foregroundColor(.white)
                        .cornerRadius(8)
                    
                    Text(ad.secondLabel)
                        .foregroundColor(Color(red: 42/255, green: 138/255, blue: 54/255))
                        .font(.system(size: 13, weight: .bold))
                }
            }
            .padding(.bottom, 120)
            .padding(.leading, 25)
        }
    }
}

struct AdView_Previews: PreviewProvider {
    static var previews: some View {
        AdView(ad: Ad(firstLabel: "СКИДКИ ДО 30%", secondLabel: "С 13 ПО 23 ИЮЛЯ", foregroundColor: LinearGradient(gradient: Gradient(colors: [Color(red: 97/255, green: 191/255, blue: 52/255), Color(red: 42/255, green: 138/255, blue: 54/255)]), startPoint: .topLeading, endPoint: .bottomTrailing)))
    }
}

//MARK: - Создаем модель для нескольких View
struct Ad: Identifiable {
    var id = UUID()
    var firstLabel: String
    var secondLabel: String
    var foregroundColor: LinearGradient
}

let adData = [Ad(firstLabel: "УСПЕЙ КУПИТЬ", secondLabel: "С 13 ПО 23 ИЮЛЯ", foregroundColor:            LinearGradient(gradient: Gradient(colors: [Color(red: 211/255, green: 244/255, blue: 1), .blue]), startPoint: .topLeading, endPoint: .bottomTrailing)),
              Ad(firstLabel: "СКИДКИ ДО 30%", secondLabel: "С 13 ПО 23 ИЮЛЯ", foregroundColor: LinearGradient(gradient: Gradient(colors: [Color(red: 97/255, green: 191/255, blue: 52/255), Color(red: 42/255, green: 138/255, blue: 54/255)]), startPoint: .topLeading, endPoint: .bottomTrailing)),
              Ad(firstLabel: "КОД LETO23", secondLabel: "С 13 ПО 23 ИЮЛЯ", foregroundColor: LinearGradient(gradient: Gradient(colors: [Color(red: 188/255, green: 100/255, blue: 230/255), .purple]), startPoint: .topLeading, endPoint: .bottomTrailing))]
