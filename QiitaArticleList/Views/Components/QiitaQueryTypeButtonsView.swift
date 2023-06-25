//
//  QiitaQueryTypeButtonsView.swift
//  QiitaArticleList
//
//  Created by t&a on 2023/06/24.
//

import SwiftUI

struct QiitaQueryTypeButtonsView: View {
    @Binding var queryType:QiitaQueryModel
    var body: some View {
        HStack{
            ForEach(QiitaQueryModel.allCases) { type in
                Button {
                    queryType = type
                } label: {
                    Text("\(type.rawValue)")
                }.padding(5)
                    .foregroundColor(.white)
                    .background(queryType == type ? Color(red: 121/255, green: 196/255, blue: 83/255):.gray)
                    .font(.caption)
                    .cornerRadius(5)
            }
        }
    }
}
