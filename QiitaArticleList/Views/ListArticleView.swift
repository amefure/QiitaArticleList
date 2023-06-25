//
//  ContentView.swift
//  QiitaArticleList
//
//  Created by t&a on 2023/06/08.
//

import SwiftUI

struct ListArticleView: View {
    
    @ObservedObject var qiitaArticleVM = QiitaArticleViewModel.shared
    @State var text:String = ""
    @State var queryType:QiitaQueryModel = .title
    
    var body: some View {
        
        VStack{
            
            QiitaHeaderView()
            
            QiitaSearchBoxView(text: $text,queryType: $queryType)
            
            QiitaQueryTypeButtonsView(queryType: $queryType)
            
            if qiitaArticleVM.articles.count != 0{
                List(qiitaArticleVM.articles){ article in
                    RowArticleView(article: article)
                }.listStyle(.grouped)
            }else{
                Spacer()
                Text("該当する記事が見つかりませんでした。")
                Spacer()
            }
            
        }.onAppear{
            qiitaArticleVM.setArticle(params: QiitaParameterModel(page: 1, per_page: 5,query:nil))
        }
    }
}
