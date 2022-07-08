//
//  ContentView.swift
//  imdbApp
//
//  Created by Bora Erdem on 8.07.2022.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var filmListViewModel : FilmListModelView
    
    
    init(){
        self.filmListViewModel = FilmListModelView()
        
    }
    @State var arananFilm = ""
    var body: some View {
        NavigationView{
            VStack(alignment: .leading){
        TextField("Aranacak Film", text: $arananFilm) {
                self.filmListViewModel.filmArama(aranacak: arananFilm)
        }.padding(.leading, 30.0).frame(width: 200, height: 50, alignment: .leading).clipShape(Rectangle())
        List(filmListViewModel.filmler, id: \.imdbID){gelen in
            NavigationLink(destination: MovieDetail()) {
                HStack{
                    GoeselGoster(gelenUrl: gelen.poster!)
                    VStack(alignment: .leading){
                        Spacer()
                        Group{
                        Text(gelen.title!).font(.title2)
                            Text(gelen.year!).font(.callout).foregroundColor(.blue)
                        }
                        .padding(.leading, 30.0)
                        Spacer()
                    }
                                        
                }
                .padding(.vertical, 3.0)

            }        }
            }.navigationTitle(Text("Filmler"))

        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            
    }
}
