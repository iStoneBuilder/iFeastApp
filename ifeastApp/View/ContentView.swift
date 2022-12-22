//
//  ContentView.swift
//  ifeastApp
//
//  Created by Ji Chen on 2022/12/18.
//

import SwiftUI

struct ContentView: View {
    
    @State private var selection:Tab = .movie
    
    enum Tab {
        case movie // 影视
        case book // 图书
        case music // 音乐
        case picture // 图片
    }
    
    var body: some View {
        TabView(selection: $selection) {
            MoviesContextView()
                .tabItem {
                    Label("影视", systemImage: "play.tv.fill")
                        .tag(Tab.movie)
                }
                .tag(Tab.movie)
            MusicConextView()
                .tabItem {
                    Label("音乐", systemImage: "music.quarternote.3")
                        .tag(Tab.music)
                }
            PictureContextView()
                .tabItem {
                    Label("图片", systemImage: "photo.stack.fill")
                        .tag(Tab.picture)
                }
            BookContextView()
                .tabItem {
                    Label("书籍", systemImage: "books.vertical.fill")
                        .tag(Tab.book)
                }
        }
        .accentColor(Color.blue)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
