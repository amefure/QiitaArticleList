//
//  DisplayDateViewModel.swift
//  QiitaArticleList
//
//  Created by t&a on 2023/06/09.
//

import UIKit

class DisplayDateViewModel {
    
    private let df = DateFormatter()
    
    public func getQiitaFormatToDate(str:String) -> String{
        df.dateFormat = "yyyy-MM-dd'T'HH:mm:ssZ"
        let date = df.date(from: str)!
        df.dateFormat = "yyyy/MM/dd HH:mm"
        return df.string(from: date)
    }

}
