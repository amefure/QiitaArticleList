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
    @Binding var queryType:QiitaQueryModel
    @FocusState var isActive:Bool
    
    var body: some View {
        
        HStack{
            TextField("検索文字", text: $text)
                .textFieldStyle(.roundedBorder)
                .padding(5)
                .keyboardType(queryType == .stocks ? .numberPad : .default)
                .focused($isActive)
                .toolbar {
                    ToolbarItem(placement: .keyboard) {
                        Button {
                            isActive = false
                        } label: {
                            Text("閉じる")
                        }.foregroundColor(Color(red: 121/255, green: 196/255, blue: 83/255))
                    }
                }
                .onChange(of: queryType) { newValue in
                    if newValue == .stocks && isActive == true{
                        isActive = false
                        isActive = true
                    }else if newValue != .stocks && isActive == true{
                        isActive = false
                        isActive = true
                    }
                }
            
            Button {
                qiitaArticleVM.setArticle(params: QiitaParameterModel(page: 1, per_page: 5,query: qiitaArticleVM.getString(type: queryType ,text: text)))
            } label: {
                Image(systemName: "magnifyingglass")
            }.padding(5)
                .foregroundColor(.white)
                .background(Color(red: 121/255, green: 196/255, blue: 83/255))
                .cornerRadius(40)
            
        }.padding(5)
    }
}
