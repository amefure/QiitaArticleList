//
//  ContentView.swift
//  QiitaArticleList
//
//  Created by t&a on 2023/06/08.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var qiitaArticleVM = QiitaArticleViewModel.shared

    var body: some View {
        VStack{
            
            List(qiitaArticleVM.articles){ article in
             RowArticleView(article: article)
            }
            
            Button {
                qiitaArticleVM.setArticle()
            } label: {
                Text("Button")
            }
        }
    }
}
