//
//  QiitaHeaderView.swift
//  QiitaArticleList
//
//  Created by t&a on 2023/06/24.
//

import SwiftUI

struct QiitaHeaderView: View {
    var body: some View {
        Text("Qiita")
            .frame(width: UIScreen.main.bounds.width)
            .padding()
            .foregroundColor(.white)
            .background(Color(red: 121/255, green: 196/255, blue: 83/255))
    }
}

struct QiitaHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        QiitaHeaderView()
    }
}
