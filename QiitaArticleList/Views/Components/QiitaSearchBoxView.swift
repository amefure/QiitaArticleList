//
//  QiitaSearchBoxView.swift
//  QiitaArticleList
//
//  Created by t&a on 2023/06/24.
//

import SwiftUI

struct QiitaSearchBoxView: View {
    
    @ObservedObject var qiitaArticleVM = QiitaArticleViewModel.shared
    @Binding var text:String
    
    var body: some View {
        HStack{
            TextField("検索文字", text: $text)
                .textFieldStyle(.roundedBorder)
                .padding(5)
            
            Button {
                qiitaArticleVM.setArticle(params: QiitaParameterModel(page: 1, per_page: 5,query: QiitaQueryModel.getString(type: .title,text: text)))
            } label: {
                Image(systemName: "magnifyingglass")
            }.padding(5)
                .foregroundColor(.white)
                .background(Color(red: 121/255, green: 196/255, blue: 83/255))
                .cornerRadius(40)
            
        }.padding(5)
    }
}
