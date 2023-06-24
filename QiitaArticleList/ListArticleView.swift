//
//  ContentView.swift
//  QiitaArticleList
//
//  Created by t&a on 2023/06/08.
//

import SwiftUI

struct ListArticleView: View {
    
    @ObservedObject var qiitaArticleVM = QiitaArticleViewModel.shared

    var body: some View {
        VStack{
            
            List(qiitaArticleVM.articles){ article in
             RowArticleView(article: article)
            }
            
        }.onAppear{
            qiitaArticleVM.setArticle(params: QiitaParameterModel(page: 1, per_page: 5,query: QiitaQueryModel.getString(type: .title,text: "基本情報技術者試験"))) //
//            qiitaArticleVM.setArticle(params: nil)
        }
    }
}
