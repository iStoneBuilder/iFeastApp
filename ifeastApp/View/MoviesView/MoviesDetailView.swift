//
//  MoviesDetailView.swift
//  ifeastApp
//
//  Created by Ji Chen on 2022/12/22.
//

import SwiftUI

struct MoviesDetailView: View {
    
    private let baseUri = "https://image.tmdb.org/t/p/original/"
    
    private let image = "tQ91wWQJ2WRNDXwxuO7GCXX5VPC.jpg"
    
    var body: some View {
        VStack {
            AsyncImage(url: .init(string: baseUri + image), scale: 1) { image in
                  image
                    .resizable() // 获取到图片后处理尺寸
                    .scaledToFill()
                } placeholder: { // 自定义 placeholder
                  Color.gray.opacity(0.3)
                    .overlay(ProgressView())
                }
                .frame(
                    width: UIScreen.main.bounds.size.width,
                    height: UIScreen.main.bounds.size.width * 3 / 5
                )
            Text("阿凡达").font(Font.title)
            HStack {
                Text("2022 · fantry · 12")
            }
            .font(Font.caption)
            HStack {
                Text("2022")
                Text("4.3")
                Text("(128 revews)")
            }
            .font(Font.caption)
        }
    }
    
}

struct MoviesDetailView_Previews: PreviewProvider {
    static var previews: some View {
        MoviesDetailView()
    }
}

