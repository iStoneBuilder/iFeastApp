//
//  WebDavService.swift
//  ifeastApp
//
//  Created by Ji Chen on 2022/12/23.
//

import Foundation
import WebDAV

class WebdavService {
    
    var webdav = WebDAV()
    
    func getListFile(){
        
        webdav.listFiles(atPath: "/", account: SimpleAccount(username:"13265044565",baseURL: "http://192.168.3.92/13265044565/z4_ifeast/iMovie"), password: "max@756423") { files, error in
            
    

            for i in (0..<10) {
                print(i)
            }
            
            
        }
        
    }

    
}

public struct SimpleAccount: WebDAVAccount {
    public var username: String?
    public var baseURL: String?
}

