//
//  RowArticleView.swift
//  QiitaArticleList
//
//  Created by t&a on 2023/06/09.
//

import SwiftUI

struct RowArticleView: View {
    
    private let displayDateVM = DisplayDateViewModel()
    
    let article:Article
    
    var body: some View {
        HStack{
            AsyncImage(url: URL(string: article.user.profile_image_url)) { image in
                image.resizable()
                    .cornerRadius(30)
            } placeholder: {
                ProgressView()
            }.frame(width: 30, height: 30)
            VStack{
                Text(article.title)
                HStack{
                    Spacer()
                    Text(displayDateVM.getQiitaFormatToDate(str: article.created_at))
                }
            }
        }
    }
}
