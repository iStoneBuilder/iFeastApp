//
//  MoviesListView.swift
//  ifeastApp
//
//  Created by Ji Chen on 2022/12/22.
//

import SwiftUI

struct MoviesListView: View {
    
    // 选中的布局样式
    @State private var styleSelection: Int = 0
    
    @State private var height = UIScreen.main.bounds.size.width * 3 / 2
    
    private let baseUri = "https://image.tmdb.org/t/p/original"
    
    private let image = "/caQ7PUeZ2SclGRVT24iyiZOLlv6.jpg"
        
    private let columns = [
      Array(repeating: GridItem(.fixed((UIScreen.main.bounds.size.width - 30) / 3)), count: 3)
    ]
    
    var body: some View {
        ScrollView(.vertical) {
            VStack(alignment: .center) {
                StickyAsyncImageSwiftUI(url: URL(string: baseUri + image),size: height, coordinateSpace: "Sticky", isGradientOn: true)
                    .padding(.bottom,0)
            }
            .padding(.bottom,0)
            .zIndex(1.0)
            
            Button {}
            label: {
              HStack(spacing: 14) {
                Image(systemName: "play.fill")
                Text("播放")
              }
            }
            .buttonStyle(.shadow)
            .frame(width: UIScreen.main.bounds.size.width,height: 60)
            .foregroundStyle(LinearGradient(colors: [.gray, .black], startPoint: .top, endPoint: .bottom))
            .padding(.top,-35)
            .zIndex(2.0)
            
            LazyVGrid(columns: columns[styleSelection]) {
                ForEach(0..<20) { i in
                    NavigationLink {
                        // 影视详情页面
                        MoviesDetailView()
                    } label: {
                        // 影视item
                        MoviesItemView()
                    }
                    .tag("")
                }
            }
        }
        .frame(maxHeight: .infinity)
    }
}

struct MoviesListView_Previews: PreviewProvider {
    static var previews: some View {
        MoviesListView()
    }
}

struct ShadowButtonStyle: ButtonStyle {
  func makeBody(configuration: Configuration) -> some View {
    configuration.label
      .foregroundColor(configuration.isPressed ? .gray : .black)
      .padding()
      .background(configuration.isPressed ? Color.purple : Color.white)
      .cornerRadius(80)
      .shadow(color: Color.black.opacity(0.35), radius: 5, x: 0, y: 5)
  }
}

extension ButtonStyle where Self == ShadowButtonStyle {
  static var shadow: Self { Self() }
}
