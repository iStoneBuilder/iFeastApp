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
        ScrollView {
            VStack(alignment: .leading){
                VStack(alignment: .center) {
                    StickyAsyncImageSwiftUI(url: URL(string: baseUri + image), coordinateSpace: "Sticky", isGradientOn: true)
                    VStack {
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
                    .frame(width:UIScreen.main.bounds.size.width,height:80)
                    .padding(0)
                    .background()
                    .backgroundStyle(.orange.gradient)
                }.padding(0)
            }
        }
    }
    
}

struct MoviesDetailView_Previews: PreviewProvider {
    static var previews: some View {
        MoviesDetailView()
    }
}

