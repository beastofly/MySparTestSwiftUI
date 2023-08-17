//
//  ContentView.swift
//  My Spar Test
//
//  Created by Павел Сидоров on 16.08.2023.
//

import SwiftUI

struct ContentView: View {
    
    let tabBarColor = UIColor(red: 246/255, green: 246/255, blue: 246/255, alpha: 1)
    
    var body: some View {
        //MARK: - Создание NavigationBar и TabBar
        
        
        TabView {
            NavigationView {
                
                MainView()
                    .navigationBarItems(leading: LocationView())
                    .navigationBarItems(trailing: Button(action: {
                        print("Tapped")
                    }) {
                        Image(systemName: "list.bullet")
                    })
                    .navigationBarTitleDisplayMode(.inline)
//                    .navigationBar
                
            }
            .tabItem {
                Text("Главная")
                Image(systemName: "tree.circle")
            }
            
            Text("Каталог")
                .tabItem {
                    Text("Каталог")
                    Image(systemName: "list.clipboard")
                }
            
            Text("Корзина")
                .tabItem {
                    Text("Корзина")
                    Image(systemName: "cart")
                }
            
            Text("Профиль")
                .tabItem {
                    Text("Профиль")
                    Image(systemName: "person")
                }
        }
        .onAppear() {
            UITabBar.appearance().backgroundColor = tabBarColor
        }
        .tint(Color.init(red: 20/255, green: 187/255, blue: 75/255))
        
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
