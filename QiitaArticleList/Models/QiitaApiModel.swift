//
//  QiitaApiModel.swift
//  QiitaArticleList
//
//  Created by t&a on 2023/06/09.
//

import UIKit
import Alamofire

class QiitaApiModel {
    
    private let apiUrl:String = "https://qiita.com/api/v2/items"
    
    public func fetchArticles(params:QiitaParameterModel?,completion:@escaping ([Article]) -> Void) {
        
        AF.request(apiUrl,method: .get,parameters: params)
            .responseData { response in
                do {
                    let decoder = JSONDecoder()
                    let articles = try! decoder.decode([Article].self, from: response.data!)
                    print(articles)
                    completion(articles)
                } catch {
                    print(error.localizedDescription)
                }
            }   
    }
}




