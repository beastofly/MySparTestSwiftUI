//
//  PresentView.swift
//  My Spar Test
//
//  Created by Павел Сидоров on 17.08.2023.
//

import SwiftUI

struct PresentView: View {
    
    let present: Present
    
    var body: some View {
        ZStack {
            Rectangle()
                .frame(width: 115, height: 140)
                .cornerRadius(20)
                .foregroundColor(present.presentColor)
                .shadow(color: .black.opacity(0.6), radius: 1, x: 1, y: 0)
            
            Text(present.presentlabel)
                .frame(width: 90, alignment: .leading)
                .font(.system(size: 17))
                .padding(.bottom, 90)
        }
        
    }
}

struct PresentView_Previews: PreviewProvider {
    static var previews: some View {
        PresentView(present: Present(presentColor: Color(red: 156/255, green: 236/255, blue: 232/255), presentlabel: "Абонемент на кофе"))
    }
}

//MARK: - Создаем модель для нескольких View
struct Present: Identifiable {
    var id = UUID()
    var presentColor: Color
    var presentlabel: String
}

let presentData = [Present(presentColor: Color(red: 156/255, green: 236/255, blue: 232/255), presentlabel: "Абонемент на кофе"),
                   Present(presentColor: Color(red: 1, green: 228/255, blue: 241/255), presentlabel: "Мои скидки"),
                   Present(presentColor: Color(red: 211/255, green: 243/255, blue: 231/255), presentlabel: "Карта в подарок"),
                   Present(presentColor: Color(red: 211/255, green: 244/255, blue: 1), presentlabel: "Доставка за 1 час")
]
