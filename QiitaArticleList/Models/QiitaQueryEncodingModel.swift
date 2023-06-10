//
//  QiitaQueryEncodingModel.swift
//  QiitaArticleList
//
//  Created by t&a on 2023/06/11.
//

import UIKit

class QiitaQueryEncodingModel {

    func japaneseEncoding(query:String) -> String {
        let itemEncodeString = query.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed)
        return itemEncodeString!
    }
}
