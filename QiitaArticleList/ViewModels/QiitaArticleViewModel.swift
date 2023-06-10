//
//  QiitaArticleViewModel.swift
//  QiitaArticleList
//
//  Created by t&a on 2023/06/09.
//

import UIKit

class QiitaArticleViewModel:ObservableObject {
    
    static let shared = QiitaArticleViewModel()
    
    private let model = QiitaApiModel()
 
    @Published var articles: [Article] = []
    
    func setArticle(){
        model.fetchArticles { array in
            self.articles = array
        }
    }
}
