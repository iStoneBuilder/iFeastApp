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
        
    private let columns = [
      Array(repeating: GridItem(.fixed((UIScreen.main.bounds.size.width - 30) / 3)), count: 3)
    ]
    
    var body: some View {
        VStack(alignment: .leading) {
            ScrollView(.vertical) {
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
}

struct MoviesListView_Previews: PreviewProvider {
    static var previews: some View {
        MoviesListView()
    }
}
