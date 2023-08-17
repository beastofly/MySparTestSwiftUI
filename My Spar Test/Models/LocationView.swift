//
//  LocationView.swift
//  My Spar Test
//
//  Created by Павел Сидоров on 16.08.2023.
//

import SwiftUI

struct LocationView: View {
    var body: some View {
        HStack{
            Image(systemName: "location")
                .frame(width: 5, height: 5)
                .foregroundColor(.red)
                .padding(.leading, 15)
            Text("Москва, Москва и Московская область")
                .frame(width: 250)
                .font(.system(size: 13))
                .lineLimit(1)
        }
        .frame(width: 310, height: 30, alignment: .leading)
        .overlay(RoundedRectangle(cornerRadius: 20).stroke(.gray, lineWidth: 1))

        
        
        
        

    }
}

struct LocationView_Previews: PreviewProvider {
    static var previews: some View {
        LocationView()
    }
}
