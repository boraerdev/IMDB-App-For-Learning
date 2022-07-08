//
//  TitlesValues.swift
//  imdbApp
//
//  Created by Bora Erdem on 9.07.2022.
//

import SwiftUI

struct TitlesValues: View {
    var titles: String
    var value: String
    var body: some View {
        VStack(alignment: .center){
                Text(titles)
                    .font(.custom("best", size: 20))
                    .fontWeight(.medium)
                    
            Text(value).foregroundColor(.gray).multilineTextAlignment(.center)
            
        }.padding(.vertical, 8)
    }
}
