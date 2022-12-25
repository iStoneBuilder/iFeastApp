//
//  IfeastSetting.swift
//  ifeastApp
//
//  Created by Ji Chen on 2022/12/25.
//

import Foundation

struct IfeastSetting: Codable{
    let settingId: UUID? // 配置ID
    let name: String? // 资源名称
    let address: String? // IP地址
    let port: Int16? // 端口
    let path: String? //资源根路径
    let account: String? // 账户
    let password: String? // 密码
}
