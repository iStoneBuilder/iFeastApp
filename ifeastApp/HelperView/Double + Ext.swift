//
//  Double + Ext.swift
//  ifeastApp
//
//  Created by Ji Chen on 2022/12/23.
//

import SwiftUI

extension Double {
    var responsiveW: Double { return (UIScreen.main.bounds.size.width * self) / 100 }
    var responsiveH: Double { return (UIScreen.main.bounds.size.height * self) / 100 }
}
