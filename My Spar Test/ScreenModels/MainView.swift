//
//  MainView.swift
//  My Spar Test
//
//  Created by Павел Сидоров on 16.08.2023.
//

import SwiftUI

struct MainView: View {
    
    let screen = UIScreen.main.bounds.size
    
    var body: some View {
        ScrollView(.vertical) {
            VStack{
                //MARK: - Создание скролла историй
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack(spacing: 78) {
                        ForEach(storyData) { item in
                            GeometryReader { geometry in
                                StoryView(story: item)
                            }
                        }
                    }
                    .padding(.leading, 12)
                    .padding(.trailing, 150)
                }
                .frame(width: screen.width, height: 125)
                .padding(.top, 15)
                
                
                //MARK: - Создание скролла объявлений
                ScrollView(.horizontal,showsIndicators: false) {
                    HStack(spacing: 365) {
                        ForEach(adData) { item in
                            GeometryReader { geometry in
                                AdView(ad: item)
                            }
                        }
                    }
                    .padding(.leading, 15)
                    .padding(.trailing, 365)
                }
                .frame(width: screen.width, height: 180)
                
                //MARK: - Создание бонусной карты
             
                BonusCardView()
                    .padding(.top, 12)
                    
                
                //MARK: - Создание скролла с подарками
                
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack(spacing: 120) {
                        ForEach(presentData) { item in
                            GeometryReader { geometry in
                                PresentView(present: item)
                            }
                        }
                    }
                    .padding(.trailing, 130)
                    .padding(.leading, 15)
                }
                .frame(width: screen.width, height: 150)
                .padding(.top, 12)
                
                //MARK: - Создание секции рекомендаций
                Text("Рекомендуем")
                    .font(.system(size: 21, weight: .bold))
                    .frame(width: screen.width, alignment: .leading)
                    .padding(.leading, 25)
                
                //MARK: - Создание скролла с рекомендациями
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack(spacing: 180) {
                        ForEach(adviceData) {item in
                            GeometryReader { geometry in
                                AdviceView(advice: item)
                            }
                        }
                    }
                    .padding(.leading, 20)
                    .padding(.trailing, 190)
                    .padding(.top, 5)
                }
                .frame(width: screen.width, height: 240, alignment: .center)
                    
                //MARK: - Создание секции сладостей
                Text("Сладкое настроение")
                    .font(.system(size: 21, weight: .bold))
                    .frame(width: screen.width, alignment: .leading)
                    .padding(.leading, 25)
                
                //MARK: - Создание скролла со сладостями
                ScrollView(.horizontal,showsIndicators: false) {
                    HStack(spacing: 180) {
                        ForEach(sweetData) {item in
                            GeometryReader { geometry in
                                AdviceView(advice: item)
                            }
                        }
                    }
                    .padding(.leading, 20)
                    .padding(.trailing, 190)
                    .padding(.top, 5)
                }
                .frame(width: screen.width, height: 240, alignment: .center)
            }
            
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
