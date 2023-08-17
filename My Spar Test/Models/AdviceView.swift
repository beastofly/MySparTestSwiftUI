//
//  AdviceView.swift
//  My Spar Test
//
//  Created by Павел Сидоров on 17.08.2023.
//

import SwiftUI

struct AdviceView: View {
    
    let advice: Advice
    
    var body: some View {
        ZStack {
            Rectangle()
                .frame(width: 180,height: 220)
                .foregroundColor(.white)
                .cornerRadius(20)
                .shadow(color: .black.opacity(0.2), radius: 5)
            
            advice.adviceImage
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 145, height: 145)
                .padding(.bottom, 45)
            
            
            //MARK: - Нижний стак
            // Цена
            HStack {
                
                if advice.isAdviceSale {
                    VStack {
                        Text(advice.adviceCost)
                            .fontWeight(.bold)
                            .frame(width: 80, height: 30)
                            .padding(.top, 170)
                        
                        Text("489.90")
                            .frame(width: 80, height: 2)
                            .padding(.bottom, 20)
                            .foregroundColor(.gray)
                            .strikethrough()
                        
                    }
                    
                } else {
                    Text(advice.adviceCost)
                        .fontWeight(.bold)
                        .frame(width: 80, height: 30)
                        .padding(.top, 170)
                }
                //Обозначение удельных единиц
                VStack{
                    Image("Rubles")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 30, height: 1)
                        
                    Text("шт")
                        .frame(height: 5)
                        .font(.system(size: 12, weight: .semibold))
                        .padding(.leading, 20)
                        
                }
                .offset(x: -23, y: advice.isAdviceSale ? 75 : 85)
                
                //Кнопка
                Button(action: {
                    //some button action
                }) {
                    Image(systemName: "basket")
                        .frame(width: 50, height: 50)
                        .tint(.white)
                        .background(Color.green)
                }
                .frame(width: 40, height: 40)
                .clipShape(RoundedRectangle(cornerRadius: 20))
                .padding(.top, 170)
                .padding(.leading, 5)

            }
            .frame(width: 180, height: 60, alignment: .leading)
            
            //MARK: - розовое оповещение о скидке
            ZStack {
                Rectangle()
                    .frame(width: advice.adviceSaleLabelWidth, height: 20)
                    .foregroundColor(Color(red: 252/255, green: 136/255, blue: 140/255, opacity: 0.7))
                    .cornerRadius(6)
                
                Text(advice.adviceSaleLable)
                    .frame(width: advice.adviceSaleLabelWidth, alignment: .trailing)
                    .foregroundColor(.white.opacity(0.7))
                    .padding(.trailing, 20)
                
            }
            .padding(.bottom, 200)
            .padding(.trailing, 60)
            
        }
        .frame(width: 180,height: 220)
        .cornerRadius(20)
        .shadow(color: .black.opacity(0.2), radius: 5)
    }
}

struct AdviceView_Previews: PreviewProvider {
    static var previews: some View {
        AdviceView(advice: Advice(adviceCost: "259.90", adviceImage: Image("Lamber"), isAdviceSale: true, adviceSaleLable: "Супер Цена", adviceSaleLabelWidth: 140))
    }
}

struct Advice: Identifiable {
    var id = UUID()
    var adviceCost: String
    var adviceImage: Image
    var isAdviceSale: Bool
    var adviceSaleLable: String
    var adviceSaleLabelWidth: CGFloat
}


let adviceData = [Advice(adviceCost: "89.90", adviceImage: Image("Milk"), isAdviceSale: false, adviceSaleLable: "", adviceSaleLabelWidth: 0),
                  Advice(adviceCost: "259.90", adviceImage: Image("Lamber"), isAdviceSale: false, adviceSaleLable: "", adviceSaleLabelWidth: 0),
                  Advice(adviceCost: "99.90", adviceImage: Image("Cola"), isAdviceSale: false, adviceSaleLable: "Супер Цена", adviceSaleLabelWidth: 140.0),
                  Advice(adviceCost: "309.90", adviceImage: Image("Zewa"), isAdviceSale: true, adviceSaleLable: "Удар по ценам", adviceSaleLabelWidth: 170.0)]

let sweetData = [Advice(adviceCost: "109.90", adviceImage: Image("Milka"), isAdviceSale: false, adviceSaleLable: "", adviceSaleLabelWidth: 0),
                 Advice(adviceCost: "99.90", adviceImage: Image("sorbetRed"), isAdviceSale: false, adviceSaleLable: "", adviceSaleLabelWidth: 0),
                 Advice(adviceCost: "99.90", adviceImage: Image("sorbetYellow"), isAdviceSale: false, adviceSaleLable: "", adviceSaleLabelWidth: 0),
                 Advice(adviceCost: "99.90", adviceImage: Image("sorbetGreen"), isAdviceSale: false, adviceSaleLable: "", adviceSaleLabelWidth: 0)]
