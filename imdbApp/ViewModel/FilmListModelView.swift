//
//  FilmListModelView.swift
//  imdbApp
//
//  Created by Bora Erdem on 8.07.2022.
//

import Foundation
import SwiftUI
class FilmListModelView: ObservableObject{
    @Published var filmler = [Movie]()
    var downloadndClient = WebService()
    func filmArama(aranacak: String){
        downloadndClient.veriGetir(search: aranacak) { sonuc in
            switch sonuc{
            case .failure(let hata):
                print(hata)
            case .success(let filmDizi):
                DispatchQueue.main.async {
                    if let filmDizi = filmDizi{
                        self.filmler = filmDizi
                    }
                }
            }
             
        }
    }
}
