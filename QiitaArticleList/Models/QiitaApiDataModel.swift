//
//  QiitaApiDataModel.swift
//  QiitaArticleList
//
//  Created by t&a on 2023/06/09.
//

import UIKit

struct User : Decodable,Identifiable{
    let id:String
    let name:String
    let profile_image_url:String
}

struct Article : Decodable,Identifiable{
    let id:String
    let title:String
    let body:String
    let created_at:String
    let updated_at:String
    let user:User
}
