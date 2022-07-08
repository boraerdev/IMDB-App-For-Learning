//
//  DetailModelView.swift
//  imdbApp
//
//  Created by Bora Erdem on 8.07.2022.
//

import Foundation
import SwiftUI

class DetailModelView: ObservableObject{
    @Published var filmDetail : DetailModel?
    
    var downClient = WebService()
    func detayGetir(idsi: String){
        downClient.detayGetir(GelenId: idsi) { gelen in
            switch gelen{
            case .failure(let hata):
                print(hata)
            case .success(let gelenFilm):
                DispatchQueue.main.async {
                    self.filmDetail = gelenFilm
                    
                }
            }
        
        }
    }
    }
