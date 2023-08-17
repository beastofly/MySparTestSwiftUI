//
//  StoryView.swift
//  My Spar Test
//
//  Created by Павел Сидоров on 16.08.2023.
//

import SwiftUI

struct StoryView: View {
    
    var story: Story
    
    var body: some View {
        VStack{
            story.storyImage
                .aspectRatio(contentMode: .fill)
                .frame(width: 50, height: 50)
                .foregroundColor(.orange)
                .cornerRadius(40)
                .padding()
                .frame(width: 56, height: 56)
                .background(Color.white)
                .cornerRadius(45)
                .padding()
                .frame(width: 62, height: 62)
                .background(Color.init(red: 20/255, green: 187/255, blue: 75/255))
                .cornerRadius(47.5)
            
            Text(story.storyLabel)
                .frame(width: 70)
                .font(.system(size: 11))
                .lineLimit(nil)
                .multilineTextAlignment(.center)
                
        }
    }
}

struct StoryView_Previews: PreviewProvider {
    static var previews: some View {
        StoryView(story: Story(storyImage: Image("sparLogo"), storyLabel: "Привелегии 'Мой Spar'"))
    }
}

//MARK: - Создаем модель для нескольких View
struct Story: Identifiable {
    var id = UUID()
    var storyImage: Image
    var storyLabel: String
}

let storyData = [Story(storyImage: Image("sparLogo"), storyLabel: "Привелегии 'Мой Spar'"),
                 Story(storyImage: Image("sparLogo"), storyLabel: "Мы в соцсетях"),
                 Story(storyImage: Image("sparLogo"), storyLabel: "3 рецепта коктейлей"),
                 Story(storyImage: Image("sparLogo"), storyLabel: "Дегустации в SPAR"),
                 Story(storyImage: Image("sparLogo"), storyLabel: "Новинки недели")]
