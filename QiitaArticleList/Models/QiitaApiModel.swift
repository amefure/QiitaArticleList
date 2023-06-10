//
//  QiitaApiModel.swift
//  QiitaArticleList
//
//  Created by t&a on 2023/06/09.
//

import UIKit
import Alamofire

class QiitaApiModel {

    public func fetchArticles(completion:@escaping ([Article]) -> Void) {
        
        AF.request("https://qiita.com/api/v2/items")
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




