//
//  QiitaArticleViewModel.swift
//  QiitaArticleList
//
//  Created by t&a on 2023/06/09.
//

import UIKit
import Alamofire

class QiitaArticleViewModel:ObservableObject {
    
    static let shared = QiitaArticleViewModel()
    
    private let model = QiitaApiModel()
 
    @Published var articles: [Article] = []
    
    public func setArticle(params:QiitaParameterModel?){
        model.fetchArticles(params: params) { array in
            self.articles = array
        }
    }
}
