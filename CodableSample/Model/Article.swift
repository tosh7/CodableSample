//
//  Article.swift
//  CodableSample
//
//  Created by Satoshi Komatsu on 2019/04/21.
//  Copyright © 2019 Satoshi Komatsu. All rights reserved.
//

import Foundation

struct Article: Codable {
    
    var title: String
    var user: User
    
    struct User: Codable {
        var id: String
    }
}
