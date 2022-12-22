//
//  MoviesItemView.swift
//  ifeastApp
//
//  Created by Ji Chen on 2022/12/22.
//

import SwiftUI

struct MoviesItemView: View {
    
    private let baseUri = "https://image.tmdb.org/t/p/original/"
    
    private let image = "zdXdYiIgDbhP5oNYLh0VI6qbgpj.jpg"
    
    @State private var width = (UIScreen.main.bounds.size.width - 40) / 3
    
    var body: some View {
        VStack(alignment: .leading){
            AsyncImage(url: .init(string: baseUri + image), scale: 1) { image in
                  image
                    .resizable() // 获取到图片后处理尺寸
                    .scaledToFill()
                } placeholder: { // 自定义 placeholder
                  Color.gray.opacity(0.2)
                    .overlay(ProgressView()) // ProgressView 加载图标
                }
                .frame(
                    width: width,
                    height: width * 3 / 2
                )
            Text("蜘蛛侠：英雄无归").font(Font.caption2)
            Text("2022").font(Font.caption2)
        }
        .padding(.vertical,4)
    }
}

struct MoviesItemView_Previews: PreviewProvider {
    static var previews: some View {
        Group{
            MoviesItemView()
        }.previewLayout(.fixed(width: (UIScreen.main.bounds.size.width - 40) / 3, height: ((UIScreen.main.bounds.size.width - 40) / 3) * 3 / 2))
    }
}
