//
//  QiitaQueryModel.swift
//  QiitaArticleList
//
//  Created by t&a on 2023/06/24.
//

import UIKit

enum QiitaQueryModel:String, Encodable{
    
    case title             // タイトルに指定の文字列が含まれる
    case body              // 本文に指定の文字列が含まれる
    case tag               // 指定のタグを持つ
    case notag = "-tag"    // 指定のタグを持たない
    case user              // 指定のユーザー
    case created           // 作成日
    case updated           // 更新日
    case stocks            // ストック数
    
    static func getString(type:QiitaQueryModel,text:String) -> String{
        return "\(type.rawValue):\(text)"
    }
}
