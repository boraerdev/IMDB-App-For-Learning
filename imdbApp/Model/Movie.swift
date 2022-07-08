//
//  MoviesModel.swift
//  imdbApp
//
//  Created by Bora Erdem on 8.07.2022.
//

import Foundation

struct Movie: Codable{
    let title : String?
    let year : String?
    let imdbID : String?
    let type : String?
    let poster : String?

    enum CodingKeys: String, CodingKey {

        case title = "Title"
        case year = "Year"
        case imdbID = "imdbID"
        case type = "Type"
        case poster = "Poster"
    }
}

struct searchMovie : Codable {
    let search : [Movie]?
    let totalResults : String?
    let response : String?

    enum CodingKeys: String, CodingKey {

        case search = "Search"
        case totalResults = "totalResults"
        case response = "Response"
    }

}
