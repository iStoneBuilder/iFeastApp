//
//  MoviesContextView.swift
//  ifeastApp
//
//  Created by Ji Chen on 2022/12/22.
//

import SwiftUI

struct MoviesContextView: View {
    var body: some View {
        // 链接跳转
        NavigationView {
            MoviesListView()
        }
    }
}

struct MoviesContextView_Previews: PreviewProvider {
    static var previews: some View {
        MoviesContextView()
    }
}
