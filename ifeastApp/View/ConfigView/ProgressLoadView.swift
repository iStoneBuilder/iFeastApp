//
//  ProgressView.swift
//  ifeastApp
//
//  Created by Ji Chen on 2022/12/22.
//

import SwiftUI

struct ProgressLoadView: View {
    
    @State private var progress = 0.0 {
        didSet {
          if progress == 100 {
            title = "蜘蛛侠：英雄无归 done"
            systemImgName = "checkmark.seal.fill"
          } else {
            title = "蜘蛛侠：英雄无归 ..."
            systemImgName = "square.and.arrow.down"
          }
        }
      }
      @State private var title = "蜘蛛侠：英雄无归 ..."
      @State private var systemImgName = "square.and.arrow.down"
      // 定时器
      private let timer = Timer.publish(every: 0.1, on: .main, in: .common).autoconnect()
      
      var body: some View {
        List {
          Section {
            ProgressView(value: progress, total: 100) {
              HStack {
                // Image(systemName: systemImgName)
                Text(title)
              }
              .foregroundColor(.blue)
            }
            .accentColor(.orange)
            
            ProgressView(value: progress, total: 100) {
                HStack {
                  // Image(systemName: systemImgName)
                  Text(title)
                }
                .foregroundColor(.blue)
              }
              .accentColor(.orange)
          }
          .onReceive(timer) { _ in // 接收定时器更新事件
            if progress < 100 {
              progress = min(100, progress + Double(arc4random_uniform(2)+1))
            }
          }
        }
        .listStyle(.insetGrouped)
      }
}

struct ProgressLoadView_Previews: PreviewProvider {
    static var previews: some View {
        ProgressLoadView()
    }
}
