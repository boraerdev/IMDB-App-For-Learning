//
//  MovieDetail.swift
//  imdbApp
//
//  Created by Bora Erdem on 8.07.2022.
//

import SwiftUI

struct MovieDetail: View {
    var gelenId : String
    @ObservedObject var detailModelView = DetailModelView()
    
    var body: some View {
        VStack{
            VStack(alignment: .trailing){
                GoeselGoster(gelenUrl: detailModelView.filmDetail?.poster ?? "").aspectRatio(contentMode: .fill).frame(width: UIScreen.main.bounds.width, height: 400, alignment: .center).clipShape(Circle()).edgesIgnoringSafeArea(.all).padding(.leading, 160.0).padding(.top,-200).shadow(radius: 15)
                
            }
            VStack(){
                
                VStack(alignment: .center){
                    Text(detailModelView.filmDetail?.runtime ?? "").font(.footnote).foregroundColor(.gray).padding(.bottom,-5)
                    HStack{
                    Text((detailModelView.filmDetail?.title! ?? "Loading.")).font(.title).fontWeight(.heavy).multilineTextAlignment(.center)
                        
                        Text((detailModelView.filmDetail?.imdbRating ?? "")).font(.title2).multilineTextAlignment(.leading).padding(10.0).frame(width: 75, height: 30, alignment: .center).background(Color.yellow).cornerRadius(8)
                }
                    Text(detailModelView.filmDetail?.year ?? "").font(.title3
                    ).foregroundColor(.blue)
                    

                }.padding(.all)
                
                Text(detailModelView.filmDetail?.plot ?? "")
                    .font(.body)
                    .multilineTextAlignment(.center)
                
                TitlesValues(titles: "Actors", value: detailModelView.filmDetail?.actors ?? "")
                TitlesValues(titles: "Director", value: detailModelView.filmDetail?.director ?? "")
                TitlesValues(titles: "Genre", value: detailModelView.filmDetail?.genre ?? "")
                

                    
                
                                
            }
            .padding(.horizontal, 20.0)
          Spacer()
        }.onAppear(perform: {
            self.detailModelView.detayGetir(idsi: self.gelenId)
        
    })
}
}
 
