//
//  GoeselGoster.swift
//  imdbApp
//
//  Created by Bora Erdem on 8.07.2022.
//

import SwiftUI

struct GoeselGoster: View {
    @ObservedObject var webService = WebService()
    let url : String
    
    init(gelenUrl: String){
        self.url = gelenUrl
        webService.gorselIndir(url: self.url)
        
    }
    var body: some View {
        if let data = self.webService.indirilenGorsel{
            return Image(uiImage: UIImage(data: data)!).resizable().aspectRatio(contentMode: .fill).frame(width: 80, height: 100, alignment: .center).clipShape(Rectangle()).cornerRadius(15)
        }else{
            return Image("joker").resizable().aspectRatio(contentMode: .fill).frame(width: 80, height: 100, alignment: .center).clipShape(Rectangle()).cornerRadius(15)
        }
    }
}

struct GoeselGoster_Previews: PreviewProvider {
    static var previews: some View {
        GoeselGoster(gelenUrl: "https://m.media-amazon.com/images/M/MV5BYzRkZTNhMDctODU5Zi00MjA3LTgxMjYtMGQ3MDI1MzBkOTM5XkEyXkFqcGdeQXVyMjExNjgyMTc@._V1_SX300.jpg")
    }
}
