//
//  QiitaQueryModel.swift
//  QiitaArticleList
//
//  Created by t&a on 2023/06/10.
//

import UIKit

struct QiitaParameterModel: Encodable {
    let page: Int
    let per_page: Int

    enum CodingKeys: String, CodingKey {
        case page
        case per_page
    }
}

